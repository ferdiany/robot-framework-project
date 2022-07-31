*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Dashboard Menu
    Wait Until Element is Visible   id:menu_dashboard_index
    Click Element                   id:menu_dashboard_index
Click Assign Leave Icon
    Wait Until Element Is Visible   xpath://a[@href=${assignLeave}]/img
    Click Element                   xpath://a[@href=${assignLeave}]/img
Verify Assign Leave Menu
    Element Should Contain          xpath://li[@class="selected"]/a         Assign Leave
    Element Should Contain          xpath://div[@class="head"]/h1           Assign Leave   
Click Leave List Icon
    Wait Until Element Is Visible   xpath://a[@href=${leaveList}]/img
    Click Element                   xpath://a[@href=${leaveList}]/img
Verify Leave List Menu
    Element Should Contain          xpath://li[@class="selected"]/a         Leave List
    Element Should Contain          xpath://div[@class="head"]/h1           Leave List
Click Timesheets Icon
    Wait Until Element Is Visible   xpath://a[@href=${timesheets}]/img
    Click Element                   xpath://a[@href=${timesheets}]/img
Verify Timesheets Menu
    Element Should Contain          xpath://li[@class="selected"]/a         Timesheets
    Element Should Contain          xpath://div[@class="head"]/h1           Select Employee
Click Apply Leave Icon
    Wait Until Element Is Visible   xpath://a[@href=${applyLeave}]/img
    Click Element                   xpath://a[@href=${applyLeave}]/img
Verify Apply Leave Menu
    Element Should Contain          xpath://li[@class="selected"]/a         Apply
    Element Should Contain          xpath://div[@class="head"]/h1           Apply Leave
Click My Leave Icon
    Wait Until Element Is Visible   xpath://a[@href=${myLeave}]/img
    Click Element                   xpath://a[@href=${myLeave}]/img
Verify My Leave Menu
    Element Should Contain          xpath://li[@class="selected"]/a         My Leave
    Element Should Contain          xpath://div[@class="head"]/h1           My Leave
Click My Timesheets Icon
    Wait Until Element Is Visible   xpath://a[@href=${myTimesheet}]/img
    Click Element                   xpath://a[@href=${myTimesheet}]/img
Verify My Timesheets Menu
    Element Should Contain          xpath://li[@class="selected"]/a         Timesheets
    Element Should Contain          xpath://div[@class="top"]/h3            Timesheet for Week
