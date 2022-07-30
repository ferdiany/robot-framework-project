*** Settings ***
Resource        ../resource/login.resource.robot
Suite Setup     Admin go to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin successfully Login to OrangeHRM Website
    Input Username
    Input Password
    Click Login Button
    Verify Admin Success Login
