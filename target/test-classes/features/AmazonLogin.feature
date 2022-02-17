#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@zonLogin
Feature: Amazon Login
  The need is to login with valid credentials. 
  I should not be able to login with invalid credentials. 

  @zonLogin
  Scenario: User should be direted to login page
  Given I am on Amazon homepage
  And The sign-in button is displayed
  When I click on the sign in button
  Then Login page should be displayed
  
  @zonLogin @amazonInvalidUser
  Scenario: User should not be directed to the password input unless valid username 
  Given I am on the login page 
  When I input a invalid email "jon.dow@gmail.com"
  And I click the continue button
  Then I should recieve error message "We cannot find an account with that email address"
  And I should still be on the login page 
  
 
