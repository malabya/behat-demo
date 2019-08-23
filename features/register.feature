Feature: Account Registration
  In order to create an account
  As a user
  I need to be able to complete the user registration form

  Scenario: Complete the registration form
    Given I am on "/user/register"
    And I enter "malabya@specbee.com" for "edit-mail"
    And I enter "malabya" for "edit-name"
    And I press the "Create new account" button
    Then I should see the text "A welcome message with further instructions has been sent to your email address."
  Scenario: Cancel user account
   Given I run drush "user:cancel --delete-content malabya -y"

