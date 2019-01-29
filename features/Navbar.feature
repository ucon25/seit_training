@javascript
Feature: Navbar menu

Scenario: Checking mokapos landing page
    Given I visit mokapos.com
    When I on landing page
    Then I should see mokapos landing page

Scenario: Checking Point Of Sale Menu
    Given I on mokapos landing page
    When I click Point Of Sale drop down menu
    And I should see drop down content
    And I click Rangkuman Fitur
    Then I should see main Rangkuman Fitur page
    When I click Manajemen Meja
    Then I should see main Manajemen Meja page

Scenario: Checking Payment Menu
    Given I on Point Of Sale page
    When I click Payment menu
    Then I should see main Payment page


Scenario: Checking Capital Menu
    Given I on Payment page
    When I click Capital menu
    Then I should see main Capital page

Scenario: Checking Lainya Menu
    Given I on Capital page
    When I click Lainya drop down menu
    And I should see drop down Lainya content
    And I click Kedai Kopi menu
    Then I should see main Kedai Kopi page
    When I click Barber Shop & Salon
    Then I should see main Barber Shop & Salon page
