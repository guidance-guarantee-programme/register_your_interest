@wip
Feature: Data capture
  As a service manager
  I want to capture the details of users interested in the service
  So that I can start to gauge user demand
  And I can invite users to be involved in testing the service

  Scenario: User's details are captured and saved
    When a user provides their details
    Then they are captured and saved
