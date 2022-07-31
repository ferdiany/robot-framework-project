*** Settings ***
Resource        ../resource/performance.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Open My Trackers Menu
    [Tags]                  Positive
    Click Performance Menu
    Click My Trackers Sub Menu
    Verify My Trackers Menu Open

Admin Successfully Open Employee Trackers Menu
    [Tags]                  Positive
    Click Performance Menu
    Click Employee Trackers Sub Menu
    Verify Employee Trackers Menu Open

Admin Successfully Open My Reviews Menu
    [Tags]                  Positive
    Click Performance Menu
    Click Manage Reviews Sub Menu
    Click My Reviews Sub Menu
    Verify My Reviews Menu Open

Admin Successfully Open Review List Menu
    [Tags]                  Positive
    Click Performance Menu
    Click Manage Reviews Sub Menu
    Click Review Lists Sub Menu
    Verify Review List Menu Open

Admin Successfully Open Trackers
    [Tags]                  Positive
    Click Performance Menu
    performance.resource.Click Configure Sub Menu
    Click Trackers Sub Menu
    Verify Trackers Menu Open
