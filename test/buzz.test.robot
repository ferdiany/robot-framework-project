*** Settings ***
Resource        ../resource/buzz.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Buzz Menu
    [Tags]                      Positive
    Click Buzz Menu
    Verify Buzz Menu Open

Admin Post Status
    [Tags]                      Positive
    Click Buzz Menu
    Input Status                ${status}
    Click Post Button

Admin Delete Status
    [Tags]                      Positive
    Click Buzz Menu
    Click V Button in Newest Status
    Click Delete Button
    Click Yes Button
    Verify Status Deleted       ${status}

Admin Successfully Go to Upload Image Section Menu
    [Tags]                      Positive
    Click Buzz Menu
    Click Upload Image Menu
    Verify Upload Image Menu Open

Admin Successfully Go to Share Video Section Menu
    [Tags]                      Positive
    Click Buzz Menu
    Click Share Video Menu
    Verify Share Video Open

