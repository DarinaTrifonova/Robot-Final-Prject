*** Settings ***
Resource        ${EXECDIR}/main.robot
Test Setup     Open Chrome To Headless
Test Teardown  Close Browser


*** Test Cases ***

Scenario: Search Returns Matching Results
    [Tags]  search
    When I Am Searching For Something
    Then The Search Results Page Shows Only Products That Contain The Searched Word