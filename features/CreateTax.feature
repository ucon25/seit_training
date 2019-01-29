@javascript
Feature: Create tax library

Scenario Outline: User create 5 tax with scenario outline
    Given I on back office mokapos login page
    When I login to back office
    And I should success login
    And I create tax name <tax_name> library
    And I create tax amount <amount> library
    Then I should see tax <tax_result>

Examples:
| tax_name | amount | tax_result |
| tax_10 | 10| tax_10|
| tax_20 | 20| tax_20|
| tax_30 | 30| tax_30|
| tax_40 | 40| tax_40|
| tax_50 | 50| tax_50|
