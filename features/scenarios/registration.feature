Feature: Registration scenarios

  Background: Steps to login
  Given when i launch the website
  Then click on the register link

  Scenario: Creating a new user through registration
    When I enter the following information on registration page
      | First Name       | Zaps                     |
      | Last Name        | Technocrats              |
      | Phone            | 999-999-9999             |
      | Email            | zapsautomation@gmail.com |
      | Address          | 1234 Main St             |
      | City             | Columbus                 |
      | State            | Ohio                     |
      | Postal Code      | 43017                    |
      | User Name        | zaps@gmail.com           |
      | Password         | password1                |
      | Confirm Password | password1                |
    And I select "INDIA" for country dropdown
    And I click submit button on registration Page
    Then I should be registered successfully
