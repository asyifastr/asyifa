package stepDefinition
import static com.kms.katalon.core.checkpoint.CheckpointFactory.findCheckpoint
import static com.kms.katalon.core.testcase.TestCaseFactory.findTestCase
import static com.kms.katalon.core.testdata.TestDataFactory.findTestData
import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject

import com.kms.katalon.core.annotation.Keyword
import com.kms.katalon.core.checkpoint.Checkpoint
import com.kms.katalon.core.checkpoint.CheckpointFactory
import com.kms.katalon.core.mobile.keyword.MobileBuiltInKeywords as Mobile
import com.kms.katalon.core.model.FailureHandling
import com.kms.katalon.core.testcase.TestCase
import com.kms.katalon.core.testcase.TestCaseFactory
import com.kms.katalon.core.testdata.TestData
import com.kms.katalon.core.testdata.TestDataFactory
import com.kms.katalon.core.testobject.ObjectRepository
import com.kms.katalon.core.testobject.TestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webui.keyword.WebUiBuiltInKeywords as WebUI

import internal.GlobalVariable

import org.openqa.selenium.WebElement
import org.openqa.selenium.WebDriver
import org.openqa.selenium.By

import com.kms.katalon.core.mobile.keyword.internal.MobileDriverFactory
import com.kms.katalon.core.webui.driver.DriverFactory

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.testobject.ConditionType
import com.kms.katalon.core.testobject.TestObjectProperty

import com.kms.katalon.core.mobile.helper.MobileElementCommonHelper
import com.kms.katalon.core.util.KeywordUtil

import com.kms.katalon.core.webui.exception.WebElementNotFoundException

import cucumber.api.java.en.And
import cucumber.api.java.en.Given
import cucumber.api.java.en.Then
import cucumber.api.java.en.When

class login {
	@Then("User input registered email {string}")
	public void user_input_registered_email(String email) {
		WebUI.callTestCase(findTestCase('Pages/Login/Input Email'), [('email') : email], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("User input registered password {string}")
	public void user_input_registered_password(String password) {
		WebUI.callTestCase(findTestCase('Pages/Login/Input Password'), [('password') : password], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("User click on Login button")
	public void user_click_on_Login_button() {
		WebUI.callTestCase(findTestCase('Pages/Login/Click Login'), [:], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("User input incorrect email {string}")
	public void user_input_incorrect_email(String email) {
		WebUI.callTestCase(findTestCase('Pages/Login/Input Email'), [('email') : email], FailureHandling.STOP_ON_FAILURE)
	}

	@Then("User input incorrect password {string}")
	public void user_input_incorrect_password(String password) {
		WebUI.callTestCase(findTestCase('Pages/Login/Input Password'), [('password') : password], FailureHandling.STOP_ON_FAILURE)
	}

	/*
	 @Then("User redirected to Home Page after login")
	 public void user_redirected_to_Home_Page_after_login() {
	 WebUI.callTestCase(findTestCase('Pages/Home After Login/Verify Content Home Page After Login'), [:], FailureHandling.STOP_ON_FAILURE)
	 }
	 @Then("User should see popup warning message {string}")
	 public void user_should_see_popup_warning_message(String message) {
	 WebUI.callTestCase(findTestCase('Pages/Login/Error Message'), [('errortext') : '', ('expected') : message],
	 FailureHandling.STOP_ON_FAILURE)
	 }
	 @Then("User should stay at Login Page")
	 public void user_should_stay_at_Login_Page() {
	 WebUI.callTestCase(findTestCase('Pages/Login/Verify Content Login Page'), [:], FailureHandling.STOP_ON_FAILURE)
	 }
	 */
}