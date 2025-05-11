Feature: Login validation

  Background:
    #Given user is able to access to HRMS application

  @login @super
  Scenario:  user attempts to log in with an empty username field
    When user login with empty username and correct password
    And user click on login button
    Then user see the error Username cannot be empty
  @login
  Scenario: user attempts to log in with an empty password field
    When user login with correct username and empty password
    And user click on login button
    Then user see the error Password is Empty
  @login @jj
  Scenario: user enters incorrect login credentials
    When user login with wrong username or password
    And user click on login button
    Then user see the error Invalid credentials

    @admin @login
  Scenario: valid admin login
    #Given user is able to access to HRMS application
    When user re-enters correct username and password
    And user click on login button
    Then attempt to log in again successfully
