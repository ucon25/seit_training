@javascript
Feature: Create gratuity library

Scenario Outline: User create 5 gratuity with scenario outline
    Given I on backoffice moka
    When I login to moka backoffice
    And I should login successfully
    And I create gratuity name <gratuity_name> library
    And I create gratuity amount <amount> library
    Then I should see gratuity <gratuity_result>

Examples:
| gratuity_name | amount | gratuity_result |
| gratuity_11 | 11| gratuity_11|
| gratuity_22 | 22| gratuity_22|
| gratuity_33 | 33| gratuity_33|
| gratuity_44 | 44| gratuity_44|
| gratuity_55 | 55| gratuity_55|
