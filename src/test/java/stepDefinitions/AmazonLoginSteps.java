package stepDefinitions;

import org.junit.Assert;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pages.AmazonLoginPage;
import utilities.Driver;
import utilities.propertiesReader;

public class AmazonLoginSteps {
	AmazonLoginPage amazonlp = new AmazonLoginPage();
	
	@Given("I am on Amazon homepage")
	public void i_am_on_amazon_homepage() {
		Driver.getDriver().get(propertiesReader.getProperty("amazonURL"));
	}
	@Given("The sign-in button is displayed")
	public void the_sign_in_button_is_displayed() {
		Assert.assertTrue(amazonlp.signInBtn.isDisplayed());
	}
	@When("I click on the sign in button")
	public void i_click_on_the_sign_in_button() {
		amazonlp.signInBtn.click();
	}
	@Then("Login page should be displayed")
	public void login_page_should_be_displayed() {
		Assert.assertTrue(amazonlp.LoginPage.isDisplayed());
	}
	
	@Given("I am on the login page")
	public void i_am_on_the_login_page() {
		Driver.getDriver().get(propertiesReader.getProperty("amazonURL"));
		amazonlp.signInBtn.click();
	    Assert.assertTrue(amazonlp.LoginPage.isDisplayed());
	    	
	}
	@When("I input a invalid email {string}")
	public void i_input_a_invalid_email(String email) {
		amazonlp.LoginPage.sendKeys(email);
	}
	@When("I click the continue button")
	public void i_click_the_continue_button() {
	    amazonlp.ContinBtn.click();
	}
	@Then("I should recieve error message {string}")
	public void i_should_recieve_error_message(String error) {
	     Assert.assertTrue(amazonlp.errorMssg.isDisplayed());
	     String actualText = amazonlp.errorMssg.getText().trim();
	     Assert.assertEquals(actualText, error);
	}
	@Then("I should still be on the login page")
	public void i_should_still_be_on_the_login_page() {
		 Assert.assertTrue(amazonlp.ErrorStill.isDisplayed());
	}



}
