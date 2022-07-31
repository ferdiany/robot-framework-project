*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Recruitment Menu
    Click Element               id:menu_recruitment_viewRecruitmentModule

Choose Username
    [Arguments]                 ${name}
    Click Element               id:candidateSearch_candidateName
    Press Keys                  id:candidateSearch_candidateName      RETURN
    sleep                       1.5s

Choose Job Title Vacancies
    [Arguments]                 ${job}
    Click Element               id:vacancySearch_jobTitle
    Select From List By Label   id:vacancySearch_jobTitle            ${job}
    sleep                       1.5s

Click Search Button
    Click Element               id:btnSrch

Click Add Button
    Click Element               id:btnAdd

Click Save Button
    Click Element               id:btnSave

Click Candidate Header
    Click Element               css:a.toggle.tiptip

Click Vacancies Sub Menu
    Click Element               id:menu_recruitment_viewJobVacancy

Input Candidate Fullname
    [Arguments]                 ${first}    ${last}
    Input Text                  id:addCandidate_firstName           ${first}
    Input Text                  id:addCandidate_lastName            ${last}
    sleep                       1.5s

Input Candidate Email
    [Arguments]                 ${text}
    Input Text                  id:addCandidate_email               ${text}
    sleep                       1.5s

Input Candidate Vacancies
    [Arguments]                 ${vacancy}
    Click Element               id:addCandidate_vacancy
    Select From List By Label   id:addCandidate_vacancy             ${vacancy}
    sleep                       1.5s

Verify Recruitment Menu Open
    Element Should Contain      xpath://li[@class="selected"]/a          Candidates
    Element Should Contain      xpath://div[@class="head"]/h1            Candidates

Verify Candidate Hide
    Element Should Contain      css:a.toggle.tiptip                      >

Verify Candidate was Added
    [Arguments]                 ${name}
    Element Should Contain      xpath:(//td[@class="left"][2])[1]        ${name}

Verify Search Candidate Name
    [Arguments]                 ${name}
    Element Should Contain      xpath:(//td[@class="left"][2])[1]        ${name}

Verify Search Vacancies
    [Arguments]                 ${validator}
    Element Should Contain      xpath:(//td[@class="left"][2])[1]        ${validator}

