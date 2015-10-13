Feature: Google Maps
  Google Maps allows user to perform a location search

  Scenario: User can perform a search on Google Maps for Brighton
    Given I have opened google maps as a anonymous user
    When the user searches for "San Francisco"
    Then google maps should have a "San Francisco" search result

  Scenario: User can perform a search on Google Maps for Brighton
    Given I have opened google maps as a anonymous user
    When the user searches for "Brighton"
    Then google maps should have a "Brighton" search result

  Scenario: User can perform a search on Google Maps for London
    Given I have opened google maps as a anonymous user
    When the user searches for "London"
    Then google maps should have a "London" search result

  Scenario: User can perform a search on Google Maps for New York City
    Given I have opened google maps as a anonymous user
    When the user searches for "New York City"
    Then google maps should have a "New York" search result

  Scenario: User can perform a search on Google Maps for Exeter, Devon
    Given I have opened google maps as a anonymous user
    When the user searches for "Exeter, Devon"
    Then google maps should have a "Exeter" search result
