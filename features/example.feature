Feature: Example

  Scenario: Google Search
    Given I open the url "/"
    When I press "example"
    And I click on the button "input[value='Google Search']"
    Then I expect that element "input#lst-ib" matches the text "example"
