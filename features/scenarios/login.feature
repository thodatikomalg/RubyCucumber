Feature: login functionality

  Scenario: Login with valid credentials
    Given when i launch the website
    When i enter username "ismaila@gmail.com"
    And i enter password "password"
    And i click on submit button
    Then i should register successfully


  Scenario Outline: Scenarios for multiple login id'Scenario
    Given when i launch the website
    When  i enter username "<username>"
    And i enter password "<password>"
    And  i click on submit button
    Then i should register successfully
    Examples:
      | username          | password  |
      | ismaila@gmail.com | password  |
      | zaps@gmail.com    | password1 |