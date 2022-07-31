*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Admin go to OrangeHRM Website
    Open Browser                    ${LoginUrl}                     ${Browser} 

Input Username
    [Arguments]                     ${text}
    Input Text                      id:txtUsername                  ${text}

Input Password
    [Arguments]                     ${text}
    Input Text                      id:txtPassword                  ${text}

Click Login Button
    Click Element                   id:btnLogin

Verify Admin Success Login
    Wait Until Element Is Visible   id:welcome
    Page Should Contain Image       xpath=//img[@alt="OrangeHRM"]

Close Browser
    Close All Browsers

Login to OrangeHRM Website
    Open Browser                    ${LoginUrl}                     ${Browser}
    Input Text                      id:txtUsername                  ${userLogin}
    Input Text                      id:txtPassword                  ${password}
    Click Element                   id:btnLogin
