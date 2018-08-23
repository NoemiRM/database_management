Feature: Using the database in our test

  Scenario: Creating a new collaborator in the database
    Given I know how many collaborator I have
    When I create a new collaborator
    Then I should have 1 additional collaborator

  Scenario: Read a collaborator object from the database
    Given I have a collaborator "Donal"
    When I read information that collaborator
    Then the collaborator should have the name "Donal"

  Scenario: Updating a collaborator object
    Given I have a collaborator "Minnie"
    When I update the name to "Mickey"
    Then I should have a record for "Mickey"
    And I should not have a record for "Minnie"

  Scenario: Delete a collaborator object
    Given I have a collaborator "Daisey"
    When I delete that collaborator
    Then I should not have a record for "Daisey"

