//package <set your test package>;
import io.appium.java_client.remote.AndroidMobileCapabilityType;
import io.appium.java_client.android.AndroidDriver;
import io.appium.java_client.android.AndroidElement;
import io.appium.java_client.remote.MobileBrowserType;
import io.appium.java_client.remote.MobileCapabilityType;
import io.appium.java_client.SwipeElementDirection;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.By;
import org.junit.jupiter.api.*;
import java.net.URL;
import java.net.MalformedURLException;
import java.util.logging.Level;

public class Untitled {
    private String reportDirectory = "reports";
    private String reportFormat = "xml";
    private String testName = "Untitled";
    protected AndroidDriver<AndroidElement> driver = null;

    DesiredCapabilities dc = new DesiredCapabilities();
    
    @BeforeEach
    public void setUp() throws MalformedURLException {
        dc.setCapability("reportDirectory", reportDirectory);
        dc.setCapability("reportFormat", reportFormat);
        dc.setCapability("testName", testName);
        dc.setCapability(MobileCapabilityType.UDID, "ZY224GD6P5");
        dc.setBrowserName(MobileBrowserType.CHROMIUM);
        driver = new AndroidDriver<>(new URL("http://localhost:4723/wd/hub"), dc);
        driver.setLogLevel(Level.INFO);
    }

    @Test
    public void testUntitled() {
        driver.get("http://");
        driver.findElement(By.xpath("//*[@text='Shaadi']")).click();
        new WebDriverWait(driver, 30).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@text='Login']")));
        driver.findElement(By.xpath("//*[@text='Login']")).click();
        driver.findElement(By.xpath("//*[@id='edt_username']")).sendKeys("demoshaadi1@gmail.com");
        driver.findElement(By.xpath("//*[@id='edt_password']")).sendKeys("test");
        new WebDriverWait(driver, 10).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@text='Login']")));
        driver.findElement(By.xpath("//*[@text='Login']")).click();
        new WebDriverWait(driver, 30).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@id='imgMyShaadi']")));
        driver.findElement(By.xpath("//*[@id='imgMyShaadi']")).click();
        driver.swipe(309, 1168, 309, 906, 811);
        driver.findElement(By.xpath("//*[@text='Upgrade Now']")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@contentDescription='Navigate up']")));
        driver.findElement(By.xpath("//*[@contentDescription='Navigate up']")).click();
        driver.swipe(481, 1137, 481, -43, 1500);
        driver.swipe(481, 1268, 481, 875, 973);
        driver.findElement(By.xpath("//*[@text='Connect Now' and ./parent::*[./parent::*[(./preceding-sibling::* | ./following-sibling::*)[./*[@text='Ishant G']]]]]")).click();
        new WebDriverWait(driver, 10).until(ExpectedConditions.presenceOfElementLocated(By.xpath("//*[@text='Upgrade Now']")));
        driver.findElement(By.xpath("//*[@text='Upgrade Now']")).click();
        driver.findElement(By.xpath("//*[@contentDescription='Navigate up']")).click();
    }

    @AfterEach
    public void tearDown() {
        driver.quit();
    }
}
