@javascript
Feature: Landing page

Scenario: Checking jumbroton section on mokapos landing page
    Given I on mokapos landing page
    When I click Coba Gratis Sekarang button
    Then I should see register page
    When I click Tonton Video Kami
    Then I should wach the video
    And I close the video


Scenario: Checking wrapper section on mokapos landing page
    Given I on mokapos landing page
    When I click Pelajari Lebih Lanjut
    Then I should see main Rangkuman Fitur page


Scenario: Checking wrapper payments section on mokapos landing page
    Given I on mokapos landing page
    When I click Pelajari Lebih Lanjut on payments section
    Then I should see main Payment page


Scenario: Checking wrapper capital section on mokapos landing page
    Given I on mokapos landing page
    When I click Pelajari Lebih Lanjut on capital section
    Then I should see main Capital page


Scenario: Checking wrapper business solution section on mokapos landing page
    Given I on mokapos landing page
    When I click Kedai Kopi
    Then I should see main Kedai Kopi page

    When I click Restoran
    Then I should see main Restoran page

    When I click restoran Cepat Saji
    Then I should see main restoran Cepat Saji page

    When I click Toko Roti
    Then I should see main Toko Roti page

    When I click Retail
    Then I should see main Retail page

    When I click Mini Market
    Then I should see main Mini Market page

    When I click Barbershop & Salon
    Then I should see main Barber Shop & Salon page

    When I click Layanan Kecantikan
    Then I should see main Layanan Kecantikan page

    When I click Layanan Profesional
    Then I should see main Layanan Profesional page

Scenario: Checking slider testimonial on mokapos landing page
    Given I on mokapos landing page
    When I click first bullet
    Then I should see cyclo testimonial
    And play video
    When I click second bullet
    Then I should see eatlah testimonial
    And I should play video again
    When I click third bullet
    Then I should see bright printing
    When I click last bullet
    Then I should see ezo testimonial

Scenario: Checking wrapper news section on mokapos landing page
    Given I on mokapos landing page
    When I click The Business Time news
    Then I should see The Business Time news page
    And I close the business time news page

    When I click Kompas news
    Then I should see Kompas news page
    And I close the kompas news page

    When I click TechCrunch news
    Then I should see TechCrunch news page
    And I close the TechCrunch news page

    When I click TechInAsia news
    Then I should see TechInAsia news page
    And I close the TechInAsia news page

    When I click TheJakartaPost news
    Then I should see TheJakartaPost news page
    And I close the TheJakartaPost news page


Scenario: Checking wrapper question section on mokapos landing page
    Given I on mokapos landing page
    When I click Pelajari Lebih Lanjut on punya pertanyaan
    Then I should see Contack Us main page

Scenario: Checking wrapper Mulai Bisnis Anda dengan Moka section on mokapos landing page
    Given I on mokapos landing page
    When I click Coba Gratis Sekarang on mulai bisnis section
    Then I should see register page from landing page

Scenario: Checking footer section on mokapos landing page
    Given I on mokapos landing page
    When I click App store icon
    Then I should see mokapos on app store page
    When I click Google Play icon
    Then I should see mokapos on google play page
