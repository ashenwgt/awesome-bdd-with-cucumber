@UpdateProfile
Feature: Update Profile
  As an employee of the company
  I want to be able to update my name, projects, email, and phone numbers on my profile
  In order to share my contact information with my colleagues

  Background: User logs in to profile
    Given I am on the "Company home" page on URL "www.mycomany.com"
    When I fill in "Username" with "Test"
    And I fill in "Password" with "123"
    And I click on the "Log In" button
    Then I am on the "My profile" page on URL "www.mycompany.com/myprofile"
    And I should see "Welcome to your profile" message
    And I should see the "Log out" button

  Scenario: Update name
    When I click on the "Edit Personal Info" button
    And I fill in "Your name" with "Thilina Ashen Gamage"
    And I click on the "Save Changes" button
    Then I should see "Your personal info has been successfully updated" message

  Scenario Outline: Add new projects
    When I click on the "Add Project" button
    And I fill in "Project Name" with "<project>"
    And I fill in "Duration" with "<duration>"
    And I fill in "Description" with "<description>"
    And I click on the "Save Changes" button
    Then I should see "Your personal info has been successfully updated" message
    Examples:
      | project    | duration   | description   |
      | Z-Mob      | 3 months   | QA            |
      | WJ5-Web UI | 1 month    | UI Testing    |
      | Q-Med      | 5 months   | UI Testing    |