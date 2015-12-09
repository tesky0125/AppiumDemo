import io.appium.java_client.AppiumDriver;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;
import java.util.Set;

import org.openqa.selenium.By;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.remote.CapabilityType;
import org.openqa.selenium.remote.DesiredCapabilities;


public class WebViewDemo {

	public static void main(String[] args) throws Exception {
		AppiumDriver driver;
        File classpathRoot = new File(System.getProperty("user.dir"));
        File app = new File(classpathRoot, "./app/selendroid-test-app.apk");
        DesiredCapabilities capabilities = new DesiredCapabilities();
        capabilities.setCapability(CapabilityType.BROWSER_NAME, "");
        capabilities.setCapability("platformName", "Android");
        capabilities.setCapability("deviceName", "Android Emulator");
        capabilities.setCapability("platformVersion", "4.4");
        capabilities.setCapability("app", app.getAbsolutePath()); 
        capabilities.setCapability("appPackage", "io.selendroid.testapp");
        capabilities.setCapability("appActivity", ".HomeScreenActivity");
        driver = new AppiumDriver(new URL("http://127.0.0.1:4723/wd/hub"), capabilities);

        WebElement button = driver.findElement(By.id("buttonStartWebview"));
        button.click();
        Thread.sleep(6000);
        Set<String> contextNames = driver.getContextHandles();
        for (String contextName : contextNames) {
          System.out.println(contextName);
          if (contextName.contains("WEBVIEW")){
        	//switch context to webview
            driver.context(contextName);
          }
        }
        WebElement inputField = driver.findElement(By.id("name_input"));
        inputField.sendKeys("Some name");
        inputField.submit();
        
        driver.quit();
	}

}
