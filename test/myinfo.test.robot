*** Settings ***
Resource        ../resource/myinfo.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to My Info Menu
    [Tags]                      Positive
    Click My Info Menu
    Verify My Info Menu Open

Admin Want to Edit Nationality Data
    [Tags]                      Positive
    Click My Info Menu
    myinfo.resource.Click Edit Button
    Change Nationality Field    ${nationality}
    myinfo.resource.Click Edit Button
    Verify Nationality Edited   ${nationality}

Admin Want to Edit Blood Type Data
    [Tags]                      Positive
    Click My Info Menu
    Click Edit Custom Fields
    Change Bloodtype Field      ${bloodType}
    Click Edit Custom Fields
    Verify Bloodtype Edited     ${bloodType}

Admin Successfully Go to Open Contact Info Menu
    [Tags]                      Positive
    Click My Info Menu
    Click Contact Details Menu
    Verify Contact Details Menu Open

Admin Successfully Go to Emergency Contact Menu
    [Tags]                      Positive
    Click My Info Menu
    Click Emergency Contacts Menu
    Verify Emergency Contacts Menu Open
