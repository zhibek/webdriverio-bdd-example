Feature: Jobs

  # Login (used in all following scenarios)
  Background: 
    Given I open the url "/"
    When I click on the button "a.ok-menu-signin-btn"
    And I wait on element "input#ok-login-email-desktop" to be visible
    And I expect that element "input#ok-login-email-desktop" is visible
    # TODO Modify the username and password with the one in the original scenario
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I click on the button "#ok-login-btn-desktop"
    Then I expect the url to contain "myautoalert/jobs.jsp"

  Scenario: Add Job
    When  I click on the link "NEW JOB"
    And I expect that element "h3*=New job" is visible
    And I select the option with the text "Standard" for element "select#DefaultJobType"
    # TODO Modify the customer with the value in the original scenario
    And I select the option with the text "Miscellaneous customers" for element "select#CreatedBy"
    And I set "PO123" to the inputfield "div#collapseJobDetails #CustomerReference"
    And I set "Add job" to the inputfield "div#collapseJobDetails textarea[name='JobDescription']"
    And I click on the button "button*=Add job"
    Then I should see the following string template "strong*=Your job is being added with ID ($ID) ... (view job)"
    And I expect that element with string template "span*=($ID)" is visible
