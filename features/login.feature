Feature: Login

  Scenario: Login
    Given I open the url "/"
    When I click on the button "a.ok-menu-signin-btn"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I expect that element "input#ok-login-email-desktop" is visible
    And I set "john.levermore@zhibek.com" to the inputfield "#ok-login-email-desktop"
    And I set "web0driver0io" to the inputfield "#ok-login-pwd-desktop"
    And I click on the button "#ok-login-btn-desktop"
    Then I expect the url to contain "myautoalert/jobs.jsp"

  Scenario: Job Details
    Given I click on the link "76608"
    Then I expect that element "input#CustomerReference" contains the text "TEST-JOB"
    And I expect that element "textarea[name='JobDescription']" contains the text "Test Job"