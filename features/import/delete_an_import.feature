@javascript
Feature: Delete import
  In order to delete an import job that have been created
  As an administrator
  I need to be able to view a list of them
  And I need to delete one of them or cancel my operation

  Background:
    Given a "footwear" catalog configuration
    And I am logged in as "Peter"
    And I am on the imports page
    Then the grid should contain 9 elements
    When I delete the "csv_footwear_product_import" job

  Scenario: Successfully delete an import job
    Given I confirm the deletion
    Then I should see flash message "Import profile successfully removed"
    And the grid should contain 8 elements
    And I should not see import profile "csv_footwear_product_import"

  Scenario: Successfully cancel the deletion of an import job
    Given I cancel the deletion
    Then the grid should contain 9 elements
    And I should see import profile "csv_footwear_product_import"
