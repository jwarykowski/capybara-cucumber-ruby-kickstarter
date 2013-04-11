Feature: Google Maps
  Google Maps allows user to perform a location search

  Scenario: User can perform a search on Google Maps for Brighton
    Given I have opened google maps as a anonymous user
    When the user searches for "Brighton"
    Then google maps should have a "Brighton, The City of Brighton and Hove" search result

  Scenario: User can perform a search on Google Maps for London
    Given I have opened google maps as a anonymous user
    When the user searches for "London, UK"
    Then google maps should have a "London" search result

  Scenario: User can perform a search on Google Maps for New York City
    Given I have opened google maps as a anonymous user
    When the user searches for "New York City"
    Then google maps should have a "New York, NY" search result

  Scenario: User can perform a search on Google Maps for Exeter, Devon
    Given I have opened google maps as a anonymous user
    When the user searches for "Exeter, Devon"
    Then google maps should have a "Exeter, Devon" search result