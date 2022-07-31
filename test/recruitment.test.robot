*** Settings ***
Resource        ../resource/recruitment.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Recruitment Menu
    [Tags]                  Positive
    Click Recruitment Menu
    Verify Recruitment Menu Open

Admin Successfully Add Candidate
    [Tags]                  Positive
    Click Recruitment Menu
    recruitment.resource.Click Add Button
    Input Candidate Fullname                ${candidateFirstname}   ${candidateLastname}
    Input Candidate Email                   ${candidateEmail}
    Input Candidate Vacancies               ${candidateVacancy}
    recruitment.resource.Click Save Button
    Verify Candidate was Added              ${candidateVacancy}

Admin Want to Search Candidate By Username
    [Tags]                  Positive
    Click Recruitment Menu
    Choose Username                         ${candidateFirstname}
    recruitment.resource.Click Search Button
    Verify Search Candidate Name            ${candidateFirstname}

Admin Hide Candidate Search Menu
    [Tags]                  Negative
    Click Recruitment Menu
    Click Candidate Header
    Verify Candidate Hide

Admin Want to Search Vacancy
    [Tags]                  Positive
    Click Recruitment Menu
    Click Vacancies Sub Menu
    Choose Job Title Vacancies              ${jobTitle}
    recruitment.resource.Click Search Button
    Verify Search Vacancies                 ${jobTitle}
