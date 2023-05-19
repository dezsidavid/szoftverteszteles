Feature: Saucedemo Shop4

  Background:
    Given the home page is opened

  Scenario Outline: correct login attempts
    Given the 'Username' field is filled with 'standard_user'
    And the 'Password' field is filled with 'secret_sauce'
    And the 'Login' button is clicked
    And the 'Sauce Labs Backpack' is added to the cart
    And the 'Cart' button is clicked
    And the 'Checkout' button is clicked
    And the 'First Name' field is filled with '<firstname>'
    And the 'Last Name' field is filled with '<lastname>'
    And the 'Zip Code' field is filled with '<zipcode>'
    When the 'Continue' button is clicked
    Then the '<errorMessage>' message is shown

    Examples:
      | firstname        | lastname        | zipcode         | errorMessage                                                              |
      |  a                |  a               |   a             | Error: First Name is required |
      | testname_first   |                 |                 | Error: Last Name is required  |
      | testname_first   | testname_last   |                 | Error: Postal Code is required|
      | testname_first   | testname_last   | 5741            | |