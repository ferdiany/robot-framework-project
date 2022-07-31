*** Settings ***
Resource        ../resource/maintenance.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Maintenance Menu
    [Tags]                  Positive
    Click Maintenance Menu
    Verify Maintenance Menu Open

Admin Successfully Go to Access Record Menu
    [Tags]                  Positive
    Click Maintenance Menu
    Click Access Record Sub Menu
    Verify Access Record Menu Open

Admin Successfully Go to Candidate Record Menu
    [Tags]                  Positive
    Click Maintenance Menu
    Click Purge Records Sub Menu
    Click Candidate Record Sub Menu
    Verify Candidate Record Open
