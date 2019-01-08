@selenium
Feature: Check navbar menu

Scenario: Click all menu on navbar
 Given I am on the Mokapos home page
 When I click menu one by one
 Then I should see main page base on clicked menu
