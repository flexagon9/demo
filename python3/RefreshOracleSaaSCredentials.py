import os
import time
import requests
import json
import sys

from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from webdriver_manager.chrome import ChromeDriverManager
from requests.auth import HTTPBasicAuth
from pathlib import Path
from stat import *


FD_ENVIRONMENT = {
                    'BASE_URL': "${{FD_URL}}",
                    'DEV9_CREDENTIAL_ID': "${{FD_DEV9_CREDENTIAL_ID}}",
                    'DEV11_CREDENTIAL_ID': "${{FD_DEV11_CREDENTIAL_ID}}",
                    'EPM_25349_CREDENTIAL_ID': "${{EPM_25349_CREDENTIAL_ID}}",
                    'EPM_25952_CREDENTIAL_ID': "${{EPM_25952_CREDENTIAL_ID}}",
                    'EPM_26207_CREDENTIAL_ID': "${{EPM_26207_CREDENTIAL_ID}}",
                    'EPM_26247_CREDENTIAL_ID': "${{EPM_26247_CREDENTIAL_ID}}",
                 }

def validate(level):
    # Path
    path = '/tmp/Crashpad'

    # Get the owner and group
    # of the specified path
    # using Path.owner() and
    # Path.group() method
    info = Path(path)
    user = info.owner()
    group = info.group()
    permissions = oct(os.stat(path)[ST_MODE])[-3:]
  
    print(f"{' ' * (4 * level)}Validating directory {path}. Owner is {user}, group is {group}, and permissions are {permissions}")
    if user != 'oracle' or group != 'oinstall':
        raise Exception("Directory '/tmp/Crashpad' owner and group should be 'oracle:oinstall'")
        
    if permissions != '755':
        raise Exception("File level permissions for '/tmp/Crashpad' should be 755.")
  

def wait_for_title(driver):
    t = 60
    c = 0
    while c < t:
        time.sleep(1)
        if driver.title:
            return
    raise Exception("No title found after 60 seconds - failed to log in")

def getDeployments(waiter, level):
    print(f"{' ' * (5 * level)}Waiting for environment cards")
    waiter.until(expected_conditions.visibility_of_element_located((
                   By.TAG_NAME, 'oj-sp-profile-card')))
                   
    environment_cards = waiter._driver.find_elements(By.TAG_NAME, 'oj-sp-profile-card')
    return environment_cards

def getPassword(waiter, index, level):
    print(f"{' ' * (5 * level)}Clicking on environment card iteration {index}")
    environment_card = waiter._driver.find_elements(By.TAG_NAME, 'oj-sp-profile-card')[index]
    environment_card.click()

    print(f"{' ' * (5 * level)}Waiting for resources table")
    resources_table = waiter.until(expected_conditions.visibility_of_element_located((By.XPATH, "//*[@id=\"resources-table\"]/div[1]/table")))
    
    print(f"{' ' * (5 * level)}Waiting to see rows within resources table")
    time.sleep(3)
    
    headerElement = waiter.until(expected_conditions.visibility_of_element_located((
                   By.TAG_NAME, 'h1')))
    header = headerElement.text
    
    resources_row_index = 1
    if 'dev9' in header or 'dev11' in header:
        # Assuming fusion row is the 2nd row in the resources table
        # else use row 1
        resources_row_index = 2
    
    resources_row = resources_table.find_elements(By.TAG_NAME, 'tr')[resources_row_index]
    resources_row.click()

    passwordElement = waiter.until(expected_conditions.visibility_of_element_located((
                    By.ID, "credentials-table:48_2")))
    password = passwordElement.text

    print(f"{' ' * (5 * level)}Found {header} password")
    return header, password


def navigateDeploymentsTab(waiter, level):
    print(f"{' ' * (4 * level)}Navigating to deployments tab...")
    deployments_tab = waiter.until(expected_conditions.visibility_of_element_located((
                    By.XPATH, "//*[@id=\"in-app-navigation_navItem_deployments\"]/a")))
    deployments_tab.click()
    print(f"{' ' * (4 * level)}Waiting to see deployments-list")
    time.sleep(3)
    waiter.until(expected_conditions.visibility_of_element_located((By.ID, "deployments-list")))
    print(f"{' ' * (4 * level)}Found deployments-list")


def getCredentialInputDefId(base_url, credential_id, level):
    credential_request = requests.get(f"{base_url}/flexdeploy/rest/v2/administration/security/credential/{credential_id}", auth=HTTPBasicAuth("${{FD_API_USER}}", "${{FD_API_PASSWORD}}"), verify=False)
    print(f"{' ' * (4 * level)}{credential_request}")
    print(f"{' ' * (4 * level)}{credential_request.content}")
    if credential_request.status_code == 200:
        credential_get_resp = json.loads(credential_request.content)
        cred_store_input_def_id = credential_get_resp['credentialInputs'][0]['credentialStoreInputDefId']
        return cred_store_input_def_id
    else:
        sys.exit(1)
    
    
def updatedCredentialTextValue(base_url, password, cred_store_input_def_id, credential_id):
        # Update the credential input
    payload = json.dumps({
    "credentialInputs": [
        {
        "inputValue": password,
        "credentialStoreInputDefId": cred_store_input_def_id
        }
    ]
    })
    
    headers = {
        'Content-Type': 'application/json'
    }

    credential_patch_request = requests.patch(f"{base_url}/flexdeploy/rest/v2/administration/security/credential/{credential_id}", headers=headers, data=payload, auth=HTTPBasicAuth("${{FD_API_USER}}", "${{FD_API_PASSWORD}}"), verify=False)

    print(credential_patch_request.content)
    if credential_patch_request.status_code == 200:
        print(f"Successfully updated SaaS Credential password for {base_url}, credential id {credential_id} and credential store input def id {cred_store_input_def_id}")
    else:
        print(f"Failed to update SaaS Credential password for {base_url}, credential id {credential_id} and credential store input def id {cred_store_input_def_id}")
        sys.exit(1)

        
def update_saas_instance_passwords(level=0):
    """Attempt to update SaaS credentials in FlexDeploy based on values stored in https://demo.oraclecloud.com/ under environments tab
    """
    global FD_ENVIRONMENT
    
    print(f"Starting update of SaaS instance passwords for {FD_ENVIRONMENT['BASE_URL']}")
    
    validate(level)

    selenium_options = Options()
    selenium_options.add_argument('--headless')
    selenium_options.add_argument('--no-sandbox')
    selenium_options.add_argument('--disable-dev-shm-usage')

    print('Starting headless chromedriver...')
    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=selenium_options)
    
    try:
        print('Opening https://demo.oraclecloud.com/...')
        driver.get('https://demo.oraclecloud.com/')
        waiter = WebDriverWait(driver, 20)

        print('Looking for login form...')
        username_input = waiter.until(expected_conditions.visibility_of_element_located((By.ID, "sso_username")))
        password_input = waiter.until(expected_conditions.visibility_of_element_located((By.ID, "ssopassword")))
        signin_button = waiter.until(expected_conditions.visibility_of_element_located((By.ID, "signin_button")))

        print("Typing email ${{ORACLE_CLOUD_EMAIL}} and password into form...")
        username_input.send_keys("${{ORACLE_CLOUD_EMAIL}}")
        password_input.send_keys("${{ORACLE_CLOUD_PASSWORD}}")
        signin_button.click()

        wait_for_title(driver)
        if 'Terms of Service' in driver.title:
            # Click Accept Button
            waiter.until(expected_conditions.visibility_of_element_located((By.ID, "P502_ACCEPT"))).click()

        navigateDeploymentsTab(waiter, level=level+1)
        
        # Demo Deployments tab will contain n number of instances i.e. EPM and Fusion
        deployment_cards = getDeployments(waiter, level=level+1)
        num_deployments = len(deployment_cards)
        print(f"Found {num_deployments} demo deployments")
        
        epm_25349_pass = None
        epm_25952_pass = None
        epm_26207_pass = None
        epm_26247_pass = None
        dev_11_pass = None
        dev_9_pass = None
        
        # Iterate all the deployments under this tab and retrieve name and password for each from the screen
        # Write the password as a text file
        
        os.chdir('../reports')
        reports_dir = os.path.abspath(os.curdir)
        with open(f"{reports_dir}/password.txt", 'wb') as fh:
            for i in range(num_deployments):
                name, password = getPassword(waiter, i, level)
                if 'epm-25349' in name:
                    epm_25349_pass = password
                elif 'epm-25952' in name:
                    epm_25952_pass = password     
                elif 'epm-26207' in name:
                    epm_26207_pass = password
                elif 'epm-26247' in name:
                    epm_26247_pass = password
                elif 'dev11' in name:
                    dev_11_pass = password
                elif 'dev9' in name:
                    dev_9_pass = password
                    
                navigateDeploymentsTab(waiter, level=level+1)
                line = "%s Password=%s\n" % (name, password)
                fh.write(bytes(line, 'utf-8'))
    finally:
        if driver is not None:
            driver.close()
        

    print(f"Processing credential updates for {FD_ENVIRONMENT['BASE_URL']}")
    dev9CredInputDefId = getCredentialInputDefId(FD_ENVIRONMENT['BASE_URL'], FD_ENVIRONMENT['DEV9_CREDENTIAL_ID'], level=level+1)
    updatedCredentialTextValue(FD_ENVIRONMENT['BASE_URL'], dev_9_pass, dev9CredInputDefId, FD_ENVIRONMENT['DEV9_CREDENTIAL_ID'])

    dev11CredInputDefId = getCredentialInputDefId(FD_ENVIRONMENT['BASE_URL'], FD_ENVIRONMENT['DEV11_CREDENTIAL_ID'], level=level+1)
    updatedCredentialTextValue(FD_ENVIRONMENT['BASE_URL'], dev_11_pass, dev11CredInputDefId, FD_ENVIRONMENT['DEV11_CREDENTIAL_ID'])
    
    epm25349CredInputDefId = getCredentialInputDefId(FD_ENVIRONMENT['BASE_URL'], FD_ENVIRONMENT['EPM_25349_CREDENTIAL_ID'], level=level+1)
    updatedCredentialTextValue(FD_ENVIRONMENT['BASE_URL'], epm_25349_pass, epm25349CredInputDefId, FD_ENVIRONMENT['EPM_25349_CREDENTIAL_ID'])
    
    epm25952CredInputDefId = getCredentialInputDefId(FD_ENVIRONMENT['BASE_URL'], FD_ENVIRONMENT['EPM_25952_CREDENTIAL_ID'], level=level+1)
    updatedCredentialTextValue(FD_ENVIRONMENT['BASE_URL'], epm_25952_pass, epm25952CredInputDefId, FD_ENVIRONMENT['EPM_25952_CREDENTIAL_ID'])

    epm26207CredInputDefId = getCredentialInputDefId(FD_ENVIRONMENT['BASE_URL'], FD_ENVIRONMENT['EPM_26207_CREDENTIAL_ID'], level=level+1)
    updatedCredentialTextValue(FD_ENVIRONMENT['BASE_URL'], epm_26207_pass, epm26207CredInputDefId, FD_ENVIRONMENT['EPM_26207_CREDENTIAL_ID'])

    epm26247CredInputDefId = getCredentialInputDefId(FD_ENVIRONMENT['BASE_URL'], FD_ENVIRONMENT['EPM_26247_CREDENTIAL_ID'], level=level+1)
    updatedCredentialTextValue(FD_ENVIRONMENT['BASE_URL'], epm_26247_pass, epm26247CredInputDefId, FD_ENVIRONMENT['EPM_26247_CREDENTIAL_ID'])    

if __name__ == '__main__':
    update_saas_instance_passwords()
