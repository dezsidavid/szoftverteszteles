Feature: Saucedemo Login

  Background:
    Given the home page is opened

  Scenario Outline: correct login attempts
    Given the 'Username' field is filled with '<username>'
    And the 'Password' field is filled with '<password>'
    When the 'Login' button is clicked
    Then the '<errorMessage>' message is shown
    Examples:
      | username        | password       | errorMessage                                                              |
      | standard_user   | secret_sauce   | |
      | problem_user    | secret_sauce   | |
      | locked_out_user | secret_sauce   | Epic sadface: Sorry, this user has been locked out. |
      | performance_glitch_user   | secret_sauce   | |

  Scenario Outline: Incorrect login attempts
    Given the 'Username' field is filled with '<username>'
    And the 'Password' field is filled with '<password>'
    When the 'Login' button is clicked
    Then the '<errorMessage>' message is shown
    Examples:
      | username        | password       | errorMessage                                                              |
      |                 |                | Epic sadface: Username is required                                        |
      | standard_user   |                | Epic sadface: Password is required                                        |
      | standard_user   | wrong_password | Epic sadface: Username and password do not match any user in this service |
      | locked_out_user | secret_sauce   | Epic sadface: Sorry, this user has been locked out.                       |
