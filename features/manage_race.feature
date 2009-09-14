Feature: Manage race
  In order to see all races
  As a runner
  I want list of races

Scenario: Race list
  Given I have races "Circuito Corpore", "Circuito Adidas"
  When I go to the list of races
  Then I should see "Circuito Corpore"
  And I should see "Circuito Adidas"



