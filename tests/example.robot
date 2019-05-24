*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}          firefox
${URL_GOOGLE}       www.google.co.th

*** Test Cases ***
Google Devops And Find BigC
    Open Browser To Google
    Search For Devops
    Result Should Contain BigC

*** Keywords ***
Open Browser To Google
    Open Browser    https://${URL_GOOGLE}    browser=${BROWSER}
    Maximize Browser Window
    Google Should Be Open

Search For Devops
    Input Text    lst-ib    bigc
    Press Key     lst-ib    \\13

Result Should Contain BigC
    Wait Until Page Contains    ${URL_BIGC}     10 s

Google Should Be Open
    Location Should Contain    ${URL_GOOGLE}
