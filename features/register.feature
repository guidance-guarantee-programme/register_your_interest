Feature: Register
  As a user
  I want to register my interest in the service
  So that I can be informed when the service is available to me

  Scenario: User is shown a thank you message
    When a user provides their details
    Then they are shown a thank you message
