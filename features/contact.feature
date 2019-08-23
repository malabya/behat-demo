Feature: Contact
  @contact
  In order to contact
  As a user
  I need to be able to complete the contact form

  Scenario: Send a contact message
    Given I am on "/contact"
    And I enter "malabya" for "Your name"
    And I enter "malabya@specbee.com" for "Your email address"
    And I select "Through a friend" from "Where did you hear about us"
    And I enter "Test subject" for "Subject"
    And I enter "Lorem Ipsum" for "Message"
    And I check the box "Contact me for regular updates"
    And I press the "Send message" button
    Then I should see the text "Your message has been sent."

