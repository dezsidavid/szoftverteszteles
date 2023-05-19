Feature: Saucedemo Shop3

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked

  Scenario: Buying a many things
    Given the 'Sauce Labs Backpack' is added to the cart shop3
    And the 'Sauce Labs Bike Light' is added to the cart shop3
    And the 'Cart' button is clicked
    And the 'Sauce Labs Backpackremove' is removed from the cart shop3
    And the 'Sauce Labs Bike Lightremove' is removed from the cart shop3
    And the 'Checkout' button is clicked
    And the 'First Name' field is filled with 'testname_first'
    And the 'Last Name' field is filled with 'testname_last'
    And the 'Zip Code' field is filled with '5741'
    And the 'Continue' button is clicked
    And the price should readshop3 'Total: $0.00'
    When the 'Finish' button is clicked
    Then verify pageShop3 "https://www.saucedemo.com/checkout-complete.html"