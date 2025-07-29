*** Settings ***
Library    SeleniumLibrary
Library    Screenshot


*** Variables ***
${URL}    https://www.cermati.com/gabung
${BROWSER}    Chrome
${EMAIL}    testuser123@example.com
${PHONE}    081234567890
${FIRST_NAME}    John
${LAST_NAME}    Doe
${SCREENSHOT_DIR}   ./screenshots

*** Test Cases ***
Register New User On Cermati
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//input[@name='email']

    Input Text    xpath=//input[@id='email']               ${EMAIL}
    Input Text    xpath=//input[@name='mobilePhone']       ${PHONE}
    Input Text    xpath=//input[@id='firstName']           ${FIRST_NAME}
    Input Text    xpath=//input[@id='lastName']            ${LAST_NAME}
    Wait Until Element Is Enabled    xpath=//button[@class='btn_SGZcZ btn-track btn--action_kallT RegistrationForm_form-container__button__pzJ9p']
    Click Button  xpath=//button[@class='btn_SGZcZ btn-track btn--action_kallT RegistrationForm_form-container__button__pzJ9p']

    Sleep    5s
    Take Screenshot 

    [Teardown]    Close Browser
