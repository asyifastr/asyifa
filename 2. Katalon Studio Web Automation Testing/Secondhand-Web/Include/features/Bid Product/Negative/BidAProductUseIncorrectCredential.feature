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
Feature: Check the Product Purchase as a Buyer Functionality

  Scenario Outline: User Wants to Bid a product Use incorrect Credential
    Given user login the web SecondHand
    And user click on product card
    When user click on button I am interested and want to negotiate
    And user type in popup textfield Enter Your Bid Price with invalid <price>
    And user click on send button Kirim
    Then user gonna see popup validation <message>

    Examples: 
      | price        | message                |
      | seratus ribu | Input Number 			    |
      | -200000      | Warning Message        |  
      | !0&+-*@10    | Input Number           |
      |              | Required Product Price |
      | 0            | Required Product Price |
