*** Settings ***
Resource        ../resource/pim.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Admin Menu
    [Tags]      Positive
    Click PIM Menu
    Verify PIM Menu Open

Admin Successfully Go to Add Employee Menu
    [Tags]      Positive
    Click PIM Menu
    Click Add Employee Sub Menu
    Verify Add Employee Sub Menu Open

Admin Successfully Go to Report Menu
    [Tags]      Positive
    Click PIM Menu
    Click Reports Sub Menu
    Verify Report Sub Menu Open

Admin Successfully Search Report
    [Tags]      Positive
    Click PIM Menu
    Click Reports Sub Menu
    Input Search Report          	    ${reportName}
    Click Search Report Button
    pim.resource.Verify Search Found    ${reportName}

Admin Successfully Open Report
    [Tags]      Positive
    Click PIM Menu
    Click Reports Sub Menu
    Input Search Report          	    ${reportName}
    Click Search Report Button
    Click Run
    Verify Report Detail Open
