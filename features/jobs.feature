Feature: Jobs

  # Login (used in all following scenarios)
  Background: 
    Given I am on "/"
    When I press "*=LOG IN"
    And I should see "input#ok-login-email-desktop"
    And I fill in the following:
        |#ok-login-email-desktop|john.levermore@zhibek.com|
        |#ok-login-pwd-desktop|web0driver0io|
    And I press "button[title*='Login to Okappy']"
    Then The url should match "myautoalert/jobs.jsp?currentPage=jobs&token=<TOKEN>"

  Scenario: Add Job
    When I press "*=NEW JOB"
    And I should see "h3*=New job"
    And I select the option with the text "Standard" for element "select#DefaultJobType"
    # TODO Modify the customer with the value in the original scenario
    And I select the option with the text "Miscellaneous customers" for element "select#CreatedBy"
    And I set "PO123" to the inputfield "div#collapseJobDetails #CustomerReference"
    And I set "Add job" to the inputfield "div#collapseJobDetails textarea[name='JobDescription']"
    And I press "button*=Add job"
    Then I should see the following string template "strong*=Your job is being added with ID ($ID) ... (view job)"
    And I expect that element with string template "span*=($ID)" is visible
    And I should see "Miscellaneous customers" in element "td:nth-child(2)" on the table row contains "span*=($ID)"
    And I should see "PO123" in element "td.col-reference" on the table row contains "span*=($ID)"
    And I should see "Not assigned" in element "td.col-allocated" on the table row contains "span*=($ID)"
    And I should see "Add job" in element "td.col-jobDescription" on the table row contains "span*=($ID)"

  Scenario: Update job from within the job
    When I press "*=NEW JOB"
    Then I should see "h3*=New job"
    And I select the option with the text "Standard" for element "select#DefaultJobType"
    # TODO Modify the customer with the value in the original scenario
    And I select the option with the text "Miscellaneous customers" for element "select#CreatedBy"
    And I set "PO135" to the inputfield "div#collapseJobDetails #CustomerReference"
    And I set "Add job" to the inputfield "div#collapseJobDetails textarea[name='JobDescription']"
    And I click on the button "button*=Add job"
    Then I should see the following string template "strong*=Your job is being added with ID ($ID) ... (view job)"
    When I click on the link with string template "($ID)"
    Then I expect that element with string template "legend*=Job details id: ($ID)" is visible
    When I set "PO200" to the inputfield "div.row-fluid #CustomerReference"
    And I select the option with the text "On site" for element "div.row-fluid select#JobStatus"
    And I set "Update job details" to the inputfield "div.row-fluid textarea[name='JobDescription']"
    And I scroll to element "button*=Update job"
    And I click on the button "button*=Update job"
    Then I should see "strong*=job updated successfully"
    And I should see the value "PO200" in element "div.row-fluid #CustomerReference"
    And I should see the value "Update job details" in element "div.row-fluid textarea[name='JobDescription']"
    And I should see the value "On site" in element "div.row-fluid select#JobStatus"
    When I click on the element "a*=< "
    Then I should see "PO200" in element "td.col-reference" on the table row contains "span*=($ID)"
    And I should see "Update job details" in element "td.col-jobDescription" on the table row contains "span*=($ID)"
    And I should see the element "i.green-tick" in element "td:nth-child(8)" on the table row contains "span*=($ID)"
    And I should see the element "i.green-tick" in element "td:nth-child(9)" on the table row contains "span*=($ID)"

  Scenario: Update Job from the job dashboard
    When I press "*=NEW JOB"
    And I should see "h3*=New job"
    And I select the option with the text "Standard" for element "select#DefaultJobType"
    # TODO Modify the customer with the value in the original scenario
    And I select the option with the text "Miscellaneous customers" for element "select#CreatedBy"
    And I set "PO135" to the inputfield "div#collapseJobDetails #CustomerReference"
    And I set "Add job" to the inputfield "div#collapseJobDetails textarea[name='JobDescription']"
    And I click on the button "button*=Add job"
    Then I should see the following string template "strong*=Your job is being added with ID ($ID) ... (view job)"
    When I click on the element "td.col-reference" on the table row contains "span*=($ID)"
    And I click on the element "i[data-original-title*='Click to edit']" on the table row contains "span*=($ID)"
    Then I expect that element with string template "h3*=Job reference for job ($ID)" is visible
    When I set "PO200" to the inputfield "div#myModalShowDescription #referenceText"
    And I click on the button "div#myModalShowDescription input#UpdateData"
    Then I should see "PO200" in element "td.col-reference" on the table row contains "span*=($ID)"
    When I click on the element "td.col-jobDescription" on the table row contains "span*=($ID)"
    And I click on the element "td.col-jobDescription i" on the table row contains "span*=($ID)"
    Then I expect that element with string template "h3*=Job description for job ($ID)" is visible
    When I set "Update job details" to the inputfield "div#myModalShowDescription textarea#myModalDescriptionText"
    And I click on the button "div#myModalShowDescription input#UpdateData"
    Then I should see "Update job details" in element "td.col-jobDescription" on the table row contains "span*=($ID)"
    When I click on the link with string template "($ID)"
    Then I expect that element with string template "legend*=Job details id: ($ID)" is visible
    And I should see the value "PO200" in element "div.row-fluid #CustomerReference"
    And I should see the value "Update job details" in element "div.row-fluid textarea[name='JobDescription']"
    When I click on the element "a*=< "
    Then I should see "PO200" in element "td.col-reference" on the table row contains "span*=($ID)"
    And I should see "Update job details" in element "td.col-jobDescription" on the table row contains "span*=($ID)"
