*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Directory Menu
    Click Element               id:menu_directory_viewDirectory

Input Directory Name
    [Arguments]                 ${name}
    Input Text                  id:searchDirectory_emp_name_empName         ${name}

Choose Job Title Directory
    [Arguments]                 ${job}
    Click Element               id:searchDirectory_job_title
    Select From List By Label   id:searchDirectory_job_title                ${job}
    sleep                       1.5s

Choose Location Directory
    # [Arguments]                 ${location}
    Click Element               id:searchDirectory_location
    Select From List By Value   id:searchDirectory_location                 3 
    sleep                       1.5s

Click Search Directory Button
    Click Element               id:searchBtn


Verify Directory Menu Open
    Element Should Contain      xpath://div[@class="head"]/h1               Search Directory  

Verify Search Found
    [Arguments]                 ${by}                                       ${row}
    Element Should Contain      xpath://tr[@class="odd"]/td/ul/li[${row}]   ${by}

Verify Search Not Found
    Element Should Contain     xpath:(//div[@class="inner"])[2]            ${dataNotFound}
