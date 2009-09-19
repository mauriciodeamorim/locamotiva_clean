Feature: Manage results
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new result
    Given I am on the new result page
    When I fill in "Start number" with "start_number 1"
    And I fill in "Category" with "category 1"
    And I fill in "Team" with "team 1"
    And I fill in "Liquid time" with "liquid_time 1"
    And I fill in "Official time" with "official_time 1"
    And I fill in "Class general" with "class_general 1"
    And I fill in "Class sex" with "class_sex 1"
    And I fill in "Class category" with "class_category 1"
    And I fill in "Pace" with "pace 1"
    And I fill in "Substitute" with "substitute 1"
    And I press "Create"
    Then I should see "start_number 1"
    And I should see "category 1"
    And I should see "team 1"
    And I should see "liquid_time 1"
    And I should see "official_time 1"
    And I should see "class_general 1"
    And I should see "class_sex 1"
    And I should see "class_category 1"
    And I should see "pace 1"
    And I should see "substitute 1"

  Scenario: Delete result
    Given the following results:
      |start_number|category|team|liquid_time|official_time|class_general|class_sex|class_category|pace|substitute|
      |start_number 1|category 1|team 1|liquid_time 1|official_time 1|class_general 1|class_sex 1|class_category 1|pace 1|substitute 1|
      |start_number 2|category 2|team 2|liquid_time 2|official_time 2|class_general 2|class_sex 2|class_category 2|pace 2|substitute 2|
      |start_number 3|category 3|team 3|liquid_time 3|official_time 3|class_general 3|class_sex 3|class_category 3|pace 3|substitute 3|
      |start_number 4|category 4|team 4|liquid_time 4|official_time 4|class_general 4|class_sex 4|class_category 4|pace 4|substitute 4|
    When I delete the 3rd result
    Then I should see the following results:
      |Start number|Category|Team|Liquid time|Official time|Class general|Class sex|Class category|Pace|Substitute|
      |start_number 1|category 1|team 1|liquid_time 1|official_time 1|class_general 1|class_sex 1|class_category 1|pace 1|substitute 1|
      |start_number 2|category 2|team 2|liquid_time 2|official_time 2|class_general 2|class_sex 2|class_category 2|pace 2|substitute 2|
      |start_number 4|category 4|team 4|liquid_time 4|official_time 4|class_general 4|class_sex 4|class_category 4|pace 4|substitute 4|
