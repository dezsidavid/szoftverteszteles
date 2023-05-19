Feature: Saucedemo Remove

  Background:
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked

  Scenario: Buying a many things 
    Given the 'Sauce Labs Backpack' is added to the cart
    And the 'Sauce Labs Bike Light' is added to the cart
    And the 'Cart' button is clicked
    And the 'Sauce Labs Backpackremove' is removed from the cart
    And the 'Sauce Labs Bike Lightremove' is removed from the cart
    And the 'Continue Shopping' button is clicked
    Then verify pageRemove "https://www.saucedemo.com/inventory.html"










