*** Settings ***
Documentation   In Dashboard Menu, Admin want to check all menu in Dashboard Quick Launch List
Resource        ../resource/dashboard.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin want to go to Assign Leave menu from Dashboard Quick Launch List
    Click Dashboard Menu
    Click Assign Leave Icon
    Verify Assign Leave Menu

Admin want to go to Leave List menu from Dashboard Quick Launch List
    Click Dashboard Menu
    Click Leave List Icon
    Verify Leave List Menu

Admin want to go to Timesheets menu from Dashboard Quick Launch List
    Click Dashboard Menu
    Click Timesheets Icon
    Verify Timesheets Menu

Admin want to go to Apply Leave menu from Dashboard Quick Launch List
    Click Dashboard Menu
    Click Apply Leave Icon
    Verify Apply Leave Menu

Admin want to go to My Leave menu from Dashboard Quick Launch List
    Click Dashboard Menu
    Click My Leave Icon
    Verify My Leave Menu

Admin want to go to My Timesheets menu from Dashboard Quick Launch List
    Click Dashboard Menu
    Click My Timesheets Icon
    Verify My Timesheets Menu
