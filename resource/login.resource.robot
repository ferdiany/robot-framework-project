*** Settings ***
Library     SeleniumLibrary
Resource    ../data/login.data.robot

*** Keywords ***
Admin go to OrangeHRM Website
    Open Browser                    ${LoginUrl}                     ${Browser} 

Input Username
    Input Text                      id:txtUsername                  ${username}

Input Password
    Input Text                      id:txtPassword                  ${password}

Click Login Button
    Click Element                   id:btnLogin

Verify Admin Success Login
    Wait Until Element Is Visible   id:welcome
    Page Should Contain Image       xpath=//img[@alt="OrangeHRM"]

Close Browser
    Close All Browsers

Login to OrangeHRM Website
    Open Browser                    ${LoginUrl}                     ${Browser}
    Input Text                      id:txtUsername                  ${username}
    Input Text                      id:txtPassword                  ${password}
    Click Element                   id:btnLogin
