*** Settings ***
Resource        ${EXECDIR}/main.robot
Test Setup     Open Chrome To Headless
Test Teardown  Close Browser


*** Test Cases ***

Scenario: Anonymous Customer - Calculate Basket VAT
#Using tags in Robot Framework is a simple, yet powerful mechanism for classifying test cases.
#Tags are free text and they can be used at least for the following purposes:
#    - Tags are shown in test reports, logs and, of course, in the test data, so they provide metadata to test cases.
#    - Statistics about test cases (total, passed, failed are automatically collected based on tags).
#    - With tags, you can include or exclude test cases to be executed.
#    - With tags, you can specify which test cases are considered critical.
    [Tags]  basket
    When I Am Adding Product To The Basket As Anonymous Customer
    Then The Basket VAT Is Calculated Correctly