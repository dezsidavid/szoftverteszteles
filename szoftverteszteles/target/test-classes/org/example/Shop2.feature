Feature: Saucedemo Shop2

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce' 
    And the 'Login' button is clicked

  Scenario: Buying a many things
    Given the 'Sauce Labs Backpack' is added to the cart shop2
    And the 'Sauce Labs Bolt T-Shirt' is added to the cart shop2
    And the 'Cart' button is clicked
    And the 'Checkout' button is clicked
    And the 'First Name' field is filled with 'testname_first'
    And the 'Last Name' field is filled with 'testname_last'
    And the 'Zip Code' field is filled with '5741'
    And the 'Continue' button is clicked
    And the 'Finish' button is clicked
    And the 'BackHome' button is clicked
    Then verify pageShop2 "https://www.saucedemo.com/inventory.html"