*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    DateTime
Library    BuiltIn
Resource          ../resources/repository.robot
*** Keywords ***
Open Test Browser
    Open Browser    https://www.airbnb.com/    browser=chrome
    Maximize Browser Window

Enter Search Location
    [Arguments]  ${location}
    Input Text  ${SEARCH_INPUT}  ${location}

Click Search Button
    Click Button  ${SEARCH_BUTTON}

Screenshot
    Capture Page Screenshot

Wait Sleep
    Sleep    2s

Get Text From Element
    [Arguments]  ${locator}
    ${text}=  Get Text  ${locator}
    Log  ${text}
    [Return]  ${text}

Check In Check Out
    Click Element        ${CHECK_IN} 
    Click Element        ${NEXT_MONTH}
    Click Element        ${CHECK_IN_DATE}         
    Click Element        ${CHECK_OUT}
    Click Element        ${CHECK_OUT_DATE}
Add Who All Increase
    Click Element    ${SEARCH_WHO}
    sleep    0.5s
    Click Element    ${ADULTS_INCREASE}
    sleep    0.5s
    Click Element    ${CHILDS_INCREASE}
    sleep    0.5s
    Click Element    ${INFANTS_INCREASE}
    sleep    0.5s
    Click Element    ${PETS_INCREASE}

Click Element 5 Times
    [Arguments]    ${locator}
    ${attempt}=    Set Variable    0
    FOR    ${index}    IN RANGE    5
        ${attempt}=    Evaluate    ${attempt} + 1
        Log    Attempting to click ${locator}, attempt ${attempt}
        Click Element    ${locator}
        Sleep    1s
    END