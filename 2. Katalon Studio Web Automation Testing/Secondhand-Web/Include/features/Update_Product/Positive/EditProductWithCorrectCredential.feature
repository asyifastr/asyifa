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
@EditProduct @Smoke
Feature: Add Product
  User want to add product
  @91-94,98-103
  Scenario Outline: User wants to edit product
  	Given user go to login page
    When user fill email <email> and password <password>
		Then user click login button
		And go to product page
  	When user choose first listed item from product page
    Then user navigated to detail product edit page
    And user input product name <product_name>
    And user input product price <product_price>
    And user choose product category <product_cat>
    And user input product description <product_desc>
    And user upload file <upload_file>
    And user click button terbitkan

    Examples: 
      | email 									| password 	| product_name	| product_price | product_cat | product_desc | upload_file	|
      |	i.afif@gmail.com				| 123				| sepedaa 			| 1600 					| 3						| ini tjontoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| 12345 				| 1500 					| 2						| ini contoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| $@&$$ 				| 1500 					| 2						| ini contoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| 1234567890	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| $@&$$$$$$$	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | motor.png		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | skuter.png		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | sepeda.jpg		|
      |	i.afif@gmail.com				| 123				| sepeda 				| 1500 					| 2						| ini contoh	 | sepeda.jpeg	|