*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    D:/KKU/SWEN_Lab4/StarterFiles/Registration.html
${BROWSER}    Chrome

*** Test Cases ***
UAT-Lab04-001-001
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton

UAT-Lab04-001-002
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton