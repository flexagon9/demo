import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;



public class RunTest
extends AbstractTest
{
static WebDriver webDriver;
static Actions action;
static WebDriverWait wait;
static String server;


public RunTest()
{
super();
}

@Test
public void login()
{
server = "http://129.152.142.52:7001";
System.out.println("Testing on server " + server);
java.util.logging.Logger.getLogger("com.gargoylesoftware").setLevel(Level.SEVERE);
webDriver = new HtmlUnitDriver(true);
webDriver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
action = new Actions(webDriver);
wait = new WebDriverWait(webDriver, 10);
driver.get("https://www.facebook.com/");
WebElement username=driver.findElement(By.id("email"));
WebElement password=driver.findElement(By.id("pass"));
WebElement login=driver.findElement(By.name("login"));
username.sendKeys("abc@gmail.com");
password.sendKeys("your_password");
login.click();Thread.sleep(2000);
String actualUrl="https://www.facebook.com/";
String expectedUrl= driver.getCurrentUrl();
Assert.assertEquals(expectedUrl,actualUrl);
webDriver.close();
}
}