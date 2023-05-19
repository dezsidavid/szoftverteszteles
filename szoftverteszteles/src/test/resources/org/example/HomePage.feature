Feature: Saucedemo Homepage

  Background:
    Given the home page is opened

  Scenario: HomePage
    Given the home page is opened
    And the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked
    Then verify page "https://www.saucedemo.com/inventory.html"