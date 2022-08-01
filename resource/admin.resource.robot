*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Admin Menu
    Wait Until Element Is Visible       id:menu_admin_viewAdminModule     30s
    Click Element                       id:menu_admin_viewAdminModule

Verify Admin Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a                     User Management
    Element Should Contain      xpath://div[@class="head"]/h1                       System Users

Click Add Button
    Click Element               id:btnAdd

Choose User Role
    [Arguments]                 ${role}
    Click Element               id:systemUser_userType
    Select From List By Label   id:systemUser_userType                              ${role}
    sleep                       1.5s

Input Employee Name
    [Arguments]                 ${text}
    Input Text                  id:systemUser_employeeName_empName                  ${text}
    sleep                       1.5s

Input Username
    [Arguments]                 ${text}
    Input Text                  id:systemUser_userName                              ${text}
    sleep                       1.5s

Choose Status
    [Arguments]                 ${status}
    Click Element               id:systemUser_status
    Select From List By Label   id:systemUser_status                                ${status}
    sleep                       1.5s

Input Password
    [Arguments]                 ${text}
    Input Text                  id:systemUser_password                              ${text}
    sleep                       1.5s

Input Confirm Password
    [Arguments]                 ${text}
    Input Text                  id:systemUser_confirmPassword                       ${text}
    sleep                       1.5s

Input Search Username
    [Arguments]                 ${text}
    Input Text                  id:searchSystemUser_userName                        ${text}
    sleep                       1.5s

Input Search Role
    [Arguments]                 ${role}
    Click Element               id:searchSystemUser_userType
    Select From List By Label   id:searchSystemUser_userType                        ${role}
    sleep                       1.5s

Input Search Employee
    [Arguments]                 ${text}
    Input Text                  id:searchSystemUser_employeeName_empName            ${text}
    Press Keys                  id:searchSystemUser_employeeName_empName            RETURN
    sleep                       1.5s

Input Search Status
    [Arguments]                 ${status}
    Click Element               id:searchSystemUser_status
    Select From List By Label   id:searchSystemUser_status                          ${status}
    sleep                       1.5s

Click Save Button
    Wait Until Element Is Enabled   id:btnSave
    Click Element                   id:btnSave

Click Search Button
    Wait Until Element Is Enabled   id:searchBtn
    Click Element                   id:searchBtn

Verify User Created
    Element Should Contain      xpath://div[@class="head"]/h1                       System Users
    Element Should Contain      xpath://li[@class="selected"]/a                     User Management

Verify Blank Error
    Wait Until Element Is Enabled       xpath://span[@for='systemUser_employeeName_empName']
    Wait Until Element Is Enabled       xpath://span[@for='systemUser_userName']
    Wait Until Element Is Enabled       xpath://span[@for='systemUser_password'] 
    Element Should Contain  xpath://span[@for='systemUser_employeeName_empName']    ${msgEmpNotFound}
    Element Should Contain  xpath://span[@for='systemUser_userName']                ${msgBlankError}
    Element Should Contain  xpath://span[@for='systemUser_password']                ${msgBlankError}

Verify Unlisted Employee Error
    Element Should Contain  xpath://span[@for='systemUser_employeeName_empName']    ${msgEmpNotFound}

Verify Invalid Username Error
    Element Should Contain  xpath://span[@for='systemUser_userName']                ${msgInvalideUsername}

Verify Invalid Password Error
    Element Should Contain  xpath://span[@for='systemUser_password']                ${msgInvalidPassword}

Verify Confirm Password Error
    Element Should Contain  xpath://span[@for='systemUser_confirmPassword']         ${msgConfirmPassword}

Verify Very Weak Password
    Wait Until Element Is Visible   id:systemUser_password_strength_meter       10s
    Element Should Contain          id:systemUser_password_strength_meter       ${passVeryWeak}

Verify Weak Password
    Wait Until Element Is Visible   id:systemUser_password_strength_meter       10s
    Element Should Contain          id:systemUser_password_strength_meter       ${passWeak}

Verify Better Password
    Wait Until Element Is Visible   id:systemUser_password_strength_meter       10s
    Element Should Contain          id:systemUser_password_strength_meter       ${passBetter}

Verify Strongest Password
    Wait Until Element Is Visible   id:systemUser_password_strength_meter       10s
    Element Should Contain          id:systemUser_password_strength_meter       ${passStrongest}

Verify Search Found
    [Arguments]             ${search}   ${row}
    Element Should Contain  xpath://td[@class="left"][${row}]                       ${search}

Verify Search Not Found
    Element Should Contain  xpath://tbody/tr/td                                     ${dataNotFound}
