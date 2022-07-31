*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Maintenance Menu
    Click Element               id:menu_maintenance_purgeEmployee

Click Access Record Sub Menu
    Click Element               id:menu_maintenance_accessEmployeeData

Click Purge Records Sub Menu
    Click Element               id:menu_maintenance_PurgeRecords

Click Candidate Record Sub Menu
    Click Element               id:menu_maintenance_purgeCandidateData

Verify Maintenance Menu Open
    Element Should Contain      xpath://div[@class="head"]/h1            Purge Employee Records

Verify Access Record Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Access Records
    Element Should Contain      xpath://div[@class="head"]/h1            Download Personal Data

Verify Candidate Record Open
    Element Should Contain      xpath://li[@class="selected"]/a          Purge Records
    Element Should Contain      xpath://div[@class="head"]/h1            Purge Candidate Records
