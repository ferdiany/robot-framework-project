*** Settings ***
Resource        ../resource/directory.resource.robot
Resource        ../resource/login.resource.robot
Suite Setup     Login to OrangeHRM Website
Suite Teardown  Close Browser

*** Test Cases ***
Admin Successfully Go to Directory Menu
    [Tags]                  Positive
    Click Directory Menu
    Verify Directory Menu Open

Admin Search Directory By dirUsername
    [Tags]                  Positive
    Click Directory Menu
    Input Directory Name                    ${dirUsername}
    Click Search Directory Button
    directory.resource.Verify Search Found  ${dirUsername}      1

Admin Search Directory By Job Title
    [Tags]                  Positive
    Click Directory Menu
    Choose Job Title Directory              ${dirJobTitle}
    Click Search Directory Button
    directory.resource.Verify Search Found  ${dirJobTitle}      2

Admin Search Directory By Location
    [Tags]                  Positive
    Click Directory Menu
    Choose Location Directory               #${dirLocation}
    Click Search Directory Button
    directory.resource.Verify Search Found  ${dirLocation}      4

Admin Search Not Found Directory
    [Tags]                  Negative
    Click Directory Menu
    Choose Job Title Directory              ${jobTitle}
    Choose Location Directory               #${dirLocation}
    Click Search Directory Button
    directory.resource.Verify Search Not Found
