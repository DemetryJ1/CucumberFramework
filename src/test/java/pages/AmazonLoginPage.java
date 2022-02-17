package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import utilities.Driver;

public class AmazonLoginPage {
	
	public AmazonLoginPage() {
		
		PageFactory.initElements(Driver.getDriver(), this);
		
		
	}
	
	@FindBy (id ="nav-link-accountList-nav-line-1")
	public WebElement signInBtn;
	
	@FindBy (id = "ap_email")
	public WebElement LoginPage;
	
	@FindBy (id = "continue")
	public WebElement ContinBtn;
	
	@FindBy (css = ".a-list-item")
	public WebElement errorMssg;
	
	@FindBy (id = "auth-error-message-box")
	public WebElement ErrorStill; 
	

}
