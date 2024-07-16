*** Settings ***
Documentation     Suite for testing Airbnb search functionality.
Library           SeleniumLibrary
Library           DateTime
Library           XML
Resource          ../../resources/keywords.robot
Resource          ../../resources/repository.robot
Resource          ../../resources/variables.robot
Test Teardown    Close Browser

*** Test Cases ***
Login With Empty Phone Number
    [Tags]        TC_001
    [Documentation]    Test Invalid login functionality with empty phone number
    Open Test Browser
    Click Element    ${LOGIN_BUTTON}
    Wait Sleep
    Click Element    ${LABEL_LOGIN}
    Wait Until Element Is Visible       ${HEADER_LOGIN}
    Wait Until Element Is Visible       ${FORM_LOGIN}
    Click Element    ${CONTINUE_BUTTON}
    Wait Sleep
    ${error_messge} =    Get Text From Element      ${ERROR_PHONE_NUMBER}
    Log  ${error_messge}  
    Wait Sleep
    Screenshot
    Should Be Equal    ${REQUIRED_PHONE_NUMBER}    ${error_messge}

Login With Invalid Phone Number Login Functionality
    [Tags]        TC_002
    [Documentation]    Test Invalid login functionality with phone number
    Open Test Browser
    Click Element    ${LOGIN_BUTTON}
    Wait Sleep
    Click Element    ${LABEL_LOGIN}
    Wait Until Element Is Visible       ${HEADER_LOGIN}
    Wait Until Element Is Visible       ${FORM_LOGIN}
    Input Text   ${PHONE_NUMBER_INPUT}   ${INVALID_LOGIN}
    Click Element    ${CONTINUE_BUTTON}
    Wait Sleep
    ${error_messge} =    Get Text From Element      ${LOGIN_ERROR_MESSAGE}
    Log  ${error_messge}  
    Wait Sleep
    Screenshot
    Should Be Equal    ${ERROR_MESSAGE_LOGIN}    ${error_messge}

Login With Invalid Phone Number Login Functionality Until lock
    [Tags]        TC_003 
    [Documentation]    Login With Invalid Phone Number Login Functionality Until lock
    Open Test Browser
    Click Element    ${LOGIN_BUTTON}
    Wait Sleep
    Click Element    ${LABEL_LOGIN}
    Wait Until Element Is Visible       ${HEADER_LOGIN}
    Wait Until Element Is Visible       ${FORM_LOGIN}
    Input Text   ${PHONE_NUMBER_INPUT}   ${INVALID_LOGIN}
    Click Element 5 Times    ${CONTINUE_BUTTON}
    Wait Sleep
    ${error_messge} =    Get Text From Element      ${LOGIN_ERROR_MESSAGE}
    Log  ${error_messge}  
    Wait Sleep
    Screenshot
    Should Be Equal    ${ERROR_MESSAGE_LOGIN_LOCK}    ${error_messge}