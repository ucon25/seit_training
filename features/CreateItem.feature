@javascript
Feature: Create item library

Scenario Outline: User create 5 item with scenario outline
    Given I on backoffice mokapos login page
    When I login to backoffice
    And Success login
    And I create <item_name> library
    Then I should see <item_result>

Examples:
| item_name | item_result |
| item_1 | item_1 |
| item_2 | item_2 |
| item_3 | item_3 |
| item_4 | item_4 |
| item_5 | item_5 |
