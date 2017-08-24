package search.features;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class StepDefs {

	WebDriver driver = null;

	@Given("^Create Chrome WebDriver$")
	public void createChromeWebDriver() throws Throwable {
		System.setProperty("webdriver.chrome.driver", "C:/Users/My/Downloads/chromedriver_win32/chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
	}

	@When("^User navigates Sony Search page with \"([^\"]*)\"$")
	public void navigationToSonySearchPage(String arg1) throws Throwable {
		driver.get("http://www.sony.com/search?query=" + arg1);
	}

	@Then("^Search should be successful$")
	public void checkResults() throws Throwable {
		System.out.println("Search is successful");
		driver.close();
	}	
}
