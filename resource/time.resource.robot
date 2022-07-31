*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Time Menu
    Click Element               id:menu_time_viewTimeModule

Click Attendance Sub Menu
    Click Element               id:menu_attendance_Attendance

Click My Records Sub Menu
    Click Element               id:menu_attendance_viewMyAttendanceRecord

Click Project Info Sub Menu
    Click Element               id:menu_admin_ProjectInfo

Click Customer Sub Menu
    Click Element               id:menu_admin_viewCustomers

Click Reports Sub Menu
    Click Element               id:menu_time_Reports

Click Project Reports Sub Menu
    Click Element               id:menu_time_displayProjectReportCriteria

Click View Button
    Click Element               id:btnView

Input Employee Name Timesheet
    [Arguments]                 ${emp}
    Input Text                  id:employee                              ${emp}
    Press Keys                  id:employee                              RETURN
    sleep                       1.5s

Verify Time Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Timesheets
    Element Should Contain      xpath://div[@class="head"]/h1            Select Employee

Verify Selected Employee Timesheets Viewed
    [Arguments]                 ${emp}
    Element Should Contain      xpath://div[@class="top"]/h3             ${emp}

Verify Project Reports Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Reports
    Element Should Contain      xpath://div[@class="head"]/h1            Project Report

Verify My Records Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Attendance
    Element Should Contain      xpath://div[@class="head"]/h1            My Attendance Records

Verify Customer Project Info Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Project Info
    Element Should Contain      xpath://div[@class="head"]/h1            Customers
