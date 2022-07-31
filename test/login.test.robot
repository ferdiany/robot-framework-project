*** Settings ***
Resource        ../resource/login.resource.robot
Suite Setup     Admin go to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin successfully Login to OrangeHRM Website
    [Tags]  Positive
    login.resource.Input Username   ${userLogin}
    login.resource.Input Password   ${password}
    Click Login Button
    Verify Admin Success Login
