*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SERVER}    D:/KKU/SWEN_Lab4/StarterFiles/Registration.html
${BROWSER}    Chrome

*** Test Cases ***
Empty First Name
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Element Should Contain    errors    Please enter your first name!!


Empty Last Name
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Element Should Contain    errors    Please enter your last name!!

Empty First Name and Last Name
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Element Should Contain    errors    Please enter your name!!

Empty Email
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    phone    091-001-1234
    Click Button    registerButton
    Element Should Contain    errors    Please enter your email!!

Empty Phone Number
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Click Button    registerButton
    Element Should Contain    errors    Please enter your phone number!!

Invalid Phone Number
    Open Browser    ${SERVER}    ${BROWSER}
    Input Text    firstname    Somyod
    Input Text    lastname    Sodsai
    Input Text    organization    CS KKU
    Input Text    email    somyod@kkumail.com
    Input Text    phone    1234
    Click Button    registerButton
    Element Should Contain    errors    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678