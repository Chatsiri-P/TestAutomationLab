*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    D:/KKU/SWEN_Lab4/StarterFiles/Registration.html
${BROWSER}    Chrome

*** Test Cases ***
UAT-Lab04-002-001
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton

UAT-Lab04-002-002
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton

UAT-Lab04-002-003
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton

UAT-Lab04-002-004
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    phone    091-001-1234
    Click Button    registerButton

UAT-Lab04-002-005
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Click Button    registerButton

UAT-Lab04-002-006
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    1234
    Click Button    registerButton