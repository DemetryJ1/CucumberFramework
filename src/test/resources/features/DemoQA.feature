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
@Regression @DemoQATests
Feature: DemoQA is a good website
  Allows us to practice our skills with test automation

  @RadioTests @SmokeTest
  Scenario Outline: User is able to select a radio button
    Given I am on the radio button webpage "https://demoqa.com/radio-button"
    When I select "<radioOptions>"
    Then A text "<textResults>" displays

    Examples: 
      | radioOptions | textResults                  |
      | Yes          | You have selected Yes        |
      | Impressive   | You have selected Impressive |

  @DemoAlert1
  Scenario: I am able to handle Alert
    Given I am on the Alerts page "https://demoqa.com/alerts"
    When I click on AlertButton element
    Then I am able to accept the Alert