*** Settings ***
Library         String
Resource        ../resource/admin.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go To Admin Menu
    [Tags]  Positive
    Click Admin Menu
    Verify Admin Menu Open

Admin Successfully Create New User
    [Tags]  Positive
    Click Admin Menu
    Click Add Button
    Choose User Role                ${userRole}
    Input Employee Name             ${EmployeeName}
    ${randomUser} =                 Generate Random String      8
    admin.resource.Input Username   ${randomUser}
    admin.resource.Input Password   ${betterPass}
    Input Confirm Password          ${betterPass}
    Click Save Button
    Verify User Created

Create User with Blank Field
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    Click Save Button
    Verify Blank Error

Create User with Unlisted Employee
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    Input Employee Name             ${unlistedEmp}
    Verify Unlisted Employee Error

Create User with Invalid Username
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Username   ${invalidData}
    Verify Invalid Username Error

Create User with Invalid Password
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Password   ${invalidData}
    Verify Invalid Password Error

Create User with Mismatch Password
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Password   ${weakPass}
    Input Confirm Password          ${veryWeakPass}
    Verify Confirm Password Error

Create User with Very Weak Password
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Password   ${veryWeakPass}
    Verify Very Weak Password

Create User with Weak Password
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Password   ${weakPass}
    Verify Weak Password

Create User with Better Password
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Password    ${betterPass}
    Verify Better Password

Create User with Strongest Password
    [Tags]  Negative
    Click Admin Menu
    Click Add Button
    admin.resource.Input Password   ${strongestPass}
    Verify Strongest Password

Search By Username
    [Tags]  Positive
    Click Admin Menu
    Input Search Username           ${searchUsername}
    Click Search Button
    Verify Search Found             ${searchUsername}   1

Search By Role
    [Tags]  Positive
    Click Admin Menu
    Input Search Role               ${userRole}
    Click Search Button
    Verify Search Found             ${userRole}         2

Search By Employee Name
    [Tags]  Positive
    Click Admin Menu
    Input Search Employee           ${EmployeeName}
    Click Search Button
    Verify Search Found             ${EmployeeName}     3

Search By Status
    [Tags]  Positive
    Click Admin Menu
    Input Search Status             ${userStatus}
    Click Search Button
    Verify Search Found             ${userStatus}       4

Search not Found
    [Tags]  Negative
    Click Admin Menu
    Input Search Username           ${unlistedEmp}
    Click Search Button
    Verify Search Not Found
