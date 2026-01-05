*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    D:/KKU/SWEN_Lab4/StarterFiles/Registration.html
${BROWSER}    Chrome

*** Test Cases ***
Register Success
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Location Should Contain    D:/KKU/SWEN_Lab4/StarterFiles/Success.html

Register Success No Organization Info
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Location Should Contain    D:/KKU/SWEN_Lab4/StarterFiles/Success.html