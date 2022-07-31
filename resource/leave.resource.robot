*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Leave Menu
    Click Element               id:menu_leave_viewLeaveModule

Click Configure Sub Menu
    Click Element               id:menu_leave_Configure

Click Leave Period Sub Menu
    Click Element               id:menu_leave_defineLeavePeriod

Click Holidays Sub Menu
    Click Element               id:menu_leave_viewHolidayList

Choose From Date
    [Arguments]                 ${date}
    Input Text                  id:calFromDate                      ${date}
    Press Keys                  id:calFromDate                      RETURN
    sleep                       1.5s

Choose To Date
    [Arguments]                 ${date}
    Input Text                  id:calToDate                        ${date}
    Press Keys                  id:calToDate                        RETURN
    sleep                       1.5s
    
Checklist All Checkbox Menu
    Select Checkbox             id:leaveList_chkSearchFilter_checkboxgroup_allcheck
    sleep                       1.5s
    
Choose Sub Unit
    [Arguments]                 ${sub}
    Click Element               id:leaveList_cmbSubunit
    Select From List By Label   id:leaveList_cmbSubunit                             ${sub}
    sleep                       1.5s

Click Search Leave Button
    Click Element               id:btnSearch

Verify Leave Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a                     Leave List
    Element Should Contain      xpath://div[@class="head"]/h1                       Leave List

Verify Leave Period Sub Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a                     Configure
    Element Should Contain      xpath://div[@class="head"]/h1                       Leave Period

Verify Holidays Sub Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a                     Configure
    Element Should Contain      xpath://div[@class="head"]/h1                       Holidays

Verify Search Found
    Element Should Contain      xpath://td[@class="left"][1]                        2021

Verify Search Not Found
    Element Should Contain      xpath://tbody/tr/td                                 ${dataNotFound}

Verify Invalid Format Date
    Element Should Contain      xpath://span[@for="calFromDate"]                    ${msgInvalidDate}
    Element Should Contain      xpath://span[@for="calToDate"]                      ${msgInvalidDate}

Verify Error To < From Date
    Element Should Contain      xpath://span[@for="calToDate"]                      ${msgErrToDate}
