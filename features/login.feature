Feature: Login

  Scenario: Login from homepage
    Given I am on "/"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"
