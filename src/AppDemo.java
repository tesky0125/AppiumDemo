import java.io.File;
import java.net.URL;
import java.util.List;
import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;

import io.appium.java_client.AppiumDriver;

public class AppDemo {
	
	public static void main(String[] args) throws Exception {
		AppiumDriver driver;
        File classpathRoot = new File(System.getProperty("user.dir"));
        File app = new File(classpathRoot, "./app/ContactManager.apk");
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability(CapabilityType.BROWSER_NAME, "");
        capabilities.setCapability("platformName", "Android");
        capabilities.setCapability("deviceName", "Android Emulator");
        capabilities.setCapability("platformVersion", "4.4");
        capabilities.setCapability("app", app.getAbsolutePath()); 
        capabilities.setCapability("appPackage", "com.example.android.contactmanager");
        capabilities.setCapability("appActivity", ".ContactManager");
        driver = new AppiumDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);
        
        WebElement el = driver.findElement(By.name("Add Contact"));
        el.click();
        //if keyboard is showing, webelements which coverd by keyboard will not be get.
        List<WebElement> textFieldsList = driver.findElementsByClassName("android.widget.EditText");
        System.out.println(textFieldsList.size());
        textFieldsList.get(0).sendKeys("Some Name");
        textFieldsList.get(1).sendKeys("18888888888");
        textFieldsList.get(2).sendKeys("Some@example.com");
        driver.swipe(100, 200, 100, 100, 2);
        driver.findElementByName("Save").click();
        
        driver.quit();
	}

}
