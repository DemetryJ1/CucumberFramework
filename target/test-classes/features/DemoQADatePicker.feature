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
Feature: Demo QA Scenarios
         I want to practice different scenarios on Demo QA
   
  @DemoQADatePicker
  Scenario: I should be able to select a date from date picker
    Given I am on the date picker page "https://demoqa.com/date-picker"
    When I enter "09/24/2027" to date picker
    Then Date entered should be selected

