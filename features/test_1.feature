Feature: test-feature

Background:
Given User prints comment "User navigates to the Calculator page"
When User navigates to the Calculator page with url "http://juliemr.github.io/protractor-demo/"
Then Page title is equal to "Super Calculator"

Scenario: 1: Verify calculator
When User enters 5 in field "[ng-model='first']"
And User selects "[value='DIVISION']" from dropdown "select"
And User enters 5 in field "[ng-model='second']"
And User clicks Go Button "#gobutton"
Then Result "h2" is equal to "1"
  Scenario: 2: Verify calculator
    When User enters 7 in field "[ng-model='first']"
    And User selects "[value='ADDITION']" from dropdown "select"
    And User enters 9 in field "[ng-model='second']"
    And User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "16"
  Scenario: 3: Verify calculator
    When User enters 102 in field "[ng-model='first']"
    And User selects "[value='MODULO']" from dropdown "select"
    And User enters 10 in field "[ng-model='second']"
    And User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "2"
  Scenario: 4: Verify calculator
    When User enters 64 in field "[ng-model='first']"
    And User selects "[value='MULTIPLICATION']" from dropdown "select"
    And User enters 4 in field "[ng-model='second']"
    And User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "256"
  Scenario: 5: Verify calculator
    When User enters 765 in field "[ng-model='first']"
    And User selects "[value='SUBTRACTION']" from dropdown "select"
    And User enters 654 in field "[ng-model='second']"
    And User clicks Go Button "#gobutton"
    Then Result "h2" is equal to "111"


