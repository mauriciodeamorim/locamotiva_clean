Feature: Manage runners
  In order to know all runners	
  As a watcher
  I want see a list of runners

  Scenario: Show a list of runners
    Given I have a list of runners:
	    |name|sex|birthday|cpf|phone|cel|nick|email|
	    |name 1|sex 1|birthday 1|cpf 1|phone 1|cel 1|nick 1|email 1|
	    |name 2|sex 2|birthday 2|cpf 2|phone 2|cel 2|nick 2|email 2|
	    |name 3|sex 3|birthday 3|cpf 3|phone 3|cel 3|nick 3|email 3|
	    |name 4|sex 4|birthday 4|cpf 4|phone 4|cel 4|nick 4|email 4|  
		When I go to list of runners
    Then I should see the following list:
      |name|sex|birthday|cpf|phone|cel|nick|email|
      |name 1|sex 1|birthday 1|cpf 1|phone 1|cel 1|nick 1|email 1|
      |name 2|sex 2|birthday 2|cpf 2|phone 2|cel 2|nick 2|email 2|
      |name 3|sex 3|birthday 3|cpf 3|phone 3|cel 3|nick 3|email 3|
      |name 4|sex 4|birthday 4|cpf 4|phone 4|cel 4|nick 4|email 4|  
  
  # Scenario: Register new runner
  #   Given I am on the new runner page
  #   When I fill in "Name" with "name 1"
  #   And I fill in "Sex" with "sex 1"
  #   And I fill in "Birthday" with "birthday 1"
  #   And I fill in "Cpf" with "cpf 1"
  #   And I fill in "Phone" with "phone 1"
  #   And I fill in "Cel" with "cel 1"
  #   And I fill in "Nick" with "nick 1"
  #   And I fill in "Email" with "email 1"
  #   And I press "Create"
  #   Then I should see "name 1"
  #   And I should see "sex 1"
  #   And I should see "birthday 1"
  #   And I should see "cpf 1"
  #   And I should see "phone 1"
  #   And I should see "cel 1"
  #   And I should see "nick 1"
  #   And I should see "email 1"
  # 
  # Scenario: Delete runner
  #   Given the following runners:
  #     |name|sex|birthday|cpf|phone|cel|nick|email|
  #     |name 1|sex 1|birthday 1|cpf 1|phone 1|cel 1|nick 1|email 1|
  #     |name 2|sex 2|birthday 2|cpf 2|phone 2|cel 2|nick 2|email 2|
  #     |name 3|sex 3|birthday 3|cpf 3|phone 3|cel 3|nick 3|email 3|
  #     |name 4|sex 4|birthday 4|cpf 4|phone 4|cel 4|nick 4|email 4|
  #   When I delete the 3rd runner
  #   Then I should see the following runners:
  #     |Name|Sex|Birthday|Cpf|Phone|Cel|Nick|Email|
  #     |name 1|sex 1|birthday 1|cpf 1|phone 1|cel 1|nick 1|email 1|
  #     |name 2|sex 2|birthday 2|cpf 2|phone 2|cel 2|nick 2|email 2|
  #     |name 4|sex 4|birthday 4|cpf 4|phone 4|cel 4|nick 4|email 4|
