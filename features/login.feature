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

  Scenario: Login from features
    Given I am on "/features"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"

  Scenario: Login from case studies
    Given I am on "/case-studies"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"

  Scenario: Login from pricing
    Given I am on "/pricing"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"

  Scenario: Login from blog
    Given I am on "/blog"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"

  Scenario: Login from about us
    Given I am on "/about-us"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"

  Scenario: Login from support
    Given I am on "/support"
    When I press "*=LOG IN"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"
