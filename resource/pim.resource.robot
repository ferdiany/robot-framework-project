*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click PIM Menu
    Click Element               id:menu_pim_viewPimModule

Click Add Employee Sub Menu
    Click Element               id:menu_pim_addEmployee

Click Reports Sub Menu
    Click Element               id:menu_core_viewDefinedPredefinedReports

Click Search Report Button
    Click Element               xpath=//input[@class="searchBtn"]

Click Run
    Click Element               xpath=//a[contains(text(),"Run")]

Input Search Report
    [Arguments]                 ${text}
    Input Text                  id:search_search                                    ${text}
    sleep                       1.5s

Verify PIM Menu Open
    Element Should Contain      xpath=//li[@class="selected"]/a                     Employee List
    Element Should Contain      xpath=//div[@class="head"]/h1                       Employee Information

Verify Add Employee Sub Menu Open
    Element Should Contain      xpath=//li[@class="selected"]/a                     Employee List
    Element Should Contain      xpath=//div[@class="head"]/h1                       Add Employee

Verify Report Sub Menu Open
    Element Should Contain      xpath=//li[@class="selected"]/a                     Reports
    Element Should Contain      xpath=//div[@class="head"]/h1                       Employee Reports

Verify Search Found
    [Arguments]                 ${search}
    Element Should Contain      xpath://td[@class="left"][1]                        ${search}

Verify Report Detail Open
    Element Should Contain      xpath=//div[@class="head"]/h1                       Report Name
    Element Should Be Enabled   id:frmList_ohrmListComponent
