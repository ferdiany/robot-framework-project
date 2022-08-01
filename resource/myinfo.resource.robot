*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click My Info Menu
    Wait Until Element Is Visible       id:menu_pim_viewMyDetails     30s
    Click Element                       id:menu_pim_viewMyDetails

Click Edit Button
    Click Element               id:btnSave

Change Nationality Field
    [Arguments]                 ${value}
    Click Element               id:personal_cmbNation
    Select From List By Label   id:personal_cmbNation                           ${value}
    sleep                       1.5s

Click Edit Custom Fields
    Click Element               id:btnEditCustom

Change Bloodtype Field
    [Arguments]                 ${type}
    Click Element               xpath://select[@name="custom1"]
    Select From List By Label   xpath://select[@name="custom1"]                 ${type}
    sleep                       1.5s

Click Contact Details Menu
    Click Element               xpath://a[contains(@href, 'contactDetails')]

Click Emergency Contacts Menu
    Click Element               xpath://a[contains(@href, 'viewEmergencyContacts')]

Verify My Info Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Personal Details
    Element Should Contain      xpath:(//div[@class="head"]/h1)[1]       Personal Details
    Element Should Contain      xpath:(//div[@class="head"]/h1)[2]       Custom Fields
    Element Should Contain      xpath:(//div[@class="head"]/h1)[4]       Attachments

Verify Nationality Edited
    [Arguments]                 ${value}
    Element Attribute Value Should Be   id:personal_cmbNation                 disabled     true
    Element Should Contain              id:personal_cmbNation                              ${value}

Verify Bloodtype Edited
    [Arguments]                 ${type}
    Element Attribute Value Should Be   xpath://select[@name="custom1"]       disabled      true
    Element Should Contain              xpath://select[@name="custom1"]                     ${type}

Verify Contact Details Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Contact Details
    Element Should Contain      xpath:(//div[@class="head"]/h1)[1]       Contact Details
    Element Should Contain      xpath:(//div[@class="head"]/h1)[3]       Attachments

Verify Emergency Contacts Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Emergency Contacts
    Element Should Contain      xpath:(//div[@class="head"]/h1)[2]       Assigned Emergency Contacts
    Element Should Contain      xpath:(//div[@class="head"]/h1)[4]       Attachments
