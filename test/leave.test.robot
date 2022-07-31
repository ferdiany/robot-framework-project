*** Settings ***
Resource        ../resource/leave.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Leave Menu
    [Tags]      Positive
    Click Leave Menu
    Verify Leave Menu Open

Admin Successfully Go to Leave Period Menu
    [Tags]      Positive
    Click Leave Menu
    Click Configure Sub Menu
    Click Leave Period Sub Menu
    Verify Leave Period Sub Menu Open

Admin Successfully Go To Holidays Menu
    [Tags]      Positive
    Click Leave Menu
    Click Configure Sub Menu
    Click Holidays Sub Menu
    Verify Holidays Sub Menu Open

Admin Search All Leave Data
    [Tags]      Positive
    Click Leave Menu
    Choose From Date                ${fromDate}
    Choose To Date                  ${toDate}
    Checklist All Checkbox Menu
    Click Search Leave Button
    leave.resource.Verify Search Found

Admin Search Data Not Found
    [Tags]      Negative
    Click Leave Menu
    Choose From Date                ${fromDate}
    Choose To Date                  ${toDate}
    Checklist All Checkbox Menu
    Choose Sub Unit                 ${subUnit}
    Click Search Leave Button
    leave.resource.Verify Search Not Found

Admin Input Invalid Format Date
    [Tags]      Negative
    Click Leave Menu
    Choose From Date                ${invalidDate}
    Choose To Date                  ${invalidDate}
    Verify Invalid Format Date

Admin Input From Date Bigger Than To Date
    [Tags]      Negative
    Click Leave Menu
    Choose From Date                ${toDate}
    Choose To Date                  ${fromDate}
    Verify Error To < From Date
