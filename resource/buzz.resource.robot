*** Settings ***
Library     SeleniumLibrary     run_on_failure=NOTHING
Resource    ../data/data.robot

*** Keywords ***
Click Buzz Menu
    Wait Until Element Is Visible       id:menu_buzz_viewBuzz     30s
    Click Element                       id:menu_buzz_viewBuzz

Click Upload Image Menu
    Click Element               id:tabLink2

Click Share Video Menu
    Click Element               id:tabLink3

Click Post Button
    Click Element               id:postSubmitBtn

Click V Button in Newest Status
    Click Element               xpath:(//a[@class="account"])[1]
    sleep                       1.5s

Click Delete Button
    Wait Until Element Is Visible   xpath:(//a[@class="deleteShare"])[1]
    Click Element                   xpath:(//a[@class="deleteShare"])[1]

Click Yes Button
    Click Element               id:delete_confirm

Input Status
    [Arguments]                 ${text}
    sleep                       2s
    Input Text                  id:createPost_content                       ${text}
    sleep                       1.5s

Verify Buzz Menu Open
    Element Should Be Enabled           xpath://*[contains(@class, 'tabSelected')]
    Element Should Be Visible           id:tabLink1
    Element Should Be Visible           id:tabLink2
    Element Should Be Visible           id:tabLink3

Verify Share Video Open
    Element Should Be Enabled           xpath://*[contains(@class, 'tabSelected')]
    Element Should Be Visible           id:frmUploadVideo

Verify Status Deleted
    [Arguments]                     ${before}
    Reload Page
    Element Should Not Contain      xpath:(//div[@class="postContent"])[1]  ${before}

Verify Upload Image Menu Open
    Element Should Be Enabled           xpath://*[contains(@class, 'tabSelected')]
    Element Should Be Visible           id:frmUploadImage
