Feature: Ice Products Information
    
    Background:
        Given I am on the Home page

    Scenario: As a Test Engineer I want to view the products information page.
        When I am on the products page
        Then I should see signs of futures, options, and otc products
