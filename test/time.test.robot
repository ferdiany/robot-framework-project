*** Settings ***
Resource        ../resource/time.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Time Menu
    [Tags]                  Positive
    Click Time Menu
    Verify Time Menu Open

Admin Want to Select Employee Timesheets
    [Tags]                  Positive
    Click Time Menu
    Input Employee Name Timesheet                   ${EmployeeName}
    Click view Button
    Verify Selected Employee Timesheets Viewed      ${EmployeeName}

Admin Successfully Open Project Reports Menu
    [Tags]                  Positive
    Click Time Menu
    time.resource.Click Reports Sub Menu
    Click Project Reports Sub Menu
    Verify Project Reports Menu Open

Admin Successfully Open My Records Menu
    [Tags]                  Positive
    Click Time Menu
    Click Attendance Sub Menu
    Click My Records Sub Menu
    Verify My Records Menu Open

Admin Successfully Open Customer Project Info
    [Tags]                  Positive
    Click Time Menu
    Click Project Info Sub Menu
    Click Customer Sub Menu
    Verify Customer Project Info Menu Open
