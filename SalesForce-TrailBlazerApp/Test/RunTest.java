
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class RunTest
   extends AbstractTest
{
 public RunTest()
 {
   super();
 }
 
@Test
public void login() {
 System.setProperty("webdriver.chrome.driver", "path of driver");
 WebDriver driver=new ChromeDriver();
 driver.manage().window().maximize();
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
 }
}