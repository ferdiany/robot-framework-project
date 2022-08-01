*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Performance Menu
    Wait Until Element Is Visible       id:menu__Performance     30s
    Click Element                       id:menu__Performance

Click My Trackers Sub Menu
    Click Element               id:menu_performance_viewMyPerformanceTrackerList

Click Employee Trackers Sub Menu
    Click Element               id:menu_performance_viewEmployeePerformanceTrackerList

Click Manage Reviews Sub Menu
    Click Element               id:menu_performance_ManageReviews

Click My Reviews Sub Menu
    Click Element               id:menu_performance_myPerformanceReview

Click Review Lists Sub Menu
    Click Element               id:menu_performance_searchEvaluatePerformancReview

Click Configure Sub Menu
    Click Element               id:menu_performance_Configure

Click Trackers Sub Menu
    Click Element               id:menu_performance_addPerformanceTracker

Verify My Trackers Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          My Trackers
    Element Should Contain      xpath://div[@class="head"]/h1            My Performance Trackers List

Verify Employee Trackers Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Employee Trackers
    Element Should Contain      xpath://div[@class="head"]/h1            Performance Trackers

Verify My Reviews Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Manage Reviews
    Element Should Contain      xpath://div[@class="head"]/h1            My Review List

Verify Review List Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Manage Reviews
    Element Should Contain      xpath://div[@class="head"]/h1            Search Performance Reviews

Verify Trackers Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Configure
    Element Should Contain      xpath:(//div[@class="head"]/h1)[2]       Performance Trackers

