/**
 * An apex page controller that exposes the site login functionality. test
 */
global with sharing class CommunitiesLoginController {

    global CommunitiesLoginController () {}
    
    // Code we will invoke on page load. Task# 1120 - 1
    global PageReference forwardToAuthPage() {
    	String startUrl = System.currentPageReference().getParameters().get('startURL');
    	String displayType = System.currentPageReference().getParameters().get('display');
        return Network.forwardToAuthPage(startUrl, displayType);
    }
}