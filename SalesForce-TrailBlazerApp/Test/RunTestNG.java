import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

import org.testng.Assert;
import org.testng.annotations.Test;

public class RunTestNG
{
  static WebDriver webDriver;
  static String server;


  public RunTestNG()
  {
    super();
  }


  	@Test
   public static void login()
    throws InterruptedException
  {
    System.setProperty("webdriver.chrome.driver", "C:\\Users\\Srimukhi\\Downloads\\chromedriver_win32 (1)\\chromedriver.exe");
    webDriver = new ChromeDriver();
    webDriver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
    webDriver.get("https://www.facebook.com/");
    WebElement username = webDriver.findElement(By.id("email"));
    WebElement password = webDriver.findElement(By.id("pass"));
    WebElement login = webDriver.findElement(By.name("login"));
    username.sendKeys("abc@gmail.com");
    password.sendKeys("your_password");
    login.click();
    Thread.sleep(2000);
    String actualUrl = "https://www.facebook.com/login/?";
    String expectedUrl = webDriver.getCurrentUrl();
    Thread.sleep(10000);
    Assert.assertTrue(expectedUrl.contains(actualUrl));
    webDriver.close();
  }


  public static void main(String args[])
    throws InterruptedException
  {
    login();
  }
}
