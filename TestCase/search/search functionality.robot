*** Settings ***
Documentation     Suite for testing Airbnb search functionality.
Library           SeleniumLibrary
Library           DateTime
Resource          ../../resources/keywords.robot
Resource          ../../resources/repository.robot
Resource          ../../resources/variables.robot


*** Test Cases ***
TC_001 Basic Location Search
    Open Test Browser
    [Documentation]    Verify searching by location returns results.
    Input Text    ${SEARCH_INPUT}    ${LOCATION_NEWYORK}
    Click Element    ${SEARCH_BUTTON}  
    Wait Sleep
    Page Should Contain Element    ${SEARCH_RESULTS}
    Screenshot
    ${text}=  Get Text From Element  ${SEARCH_RESULTS}
    log    ${text}
    Should Be Equal        ${text}    ${expected_result}
    Close Browser

TC_002 Search With Dates
    Open Test Browser
    [Documentation]    Verify that search with dates results correctly.
    Input Text    ${SEARCH_INPUT}    ${LOCATION_BANGKOK}
    Check In Check Out
    Click Element    ${SEARCH_BUTTON}
    Wait Sleep
    ${current}=  Get Text From Element   ${SEARCH_DATE}
    log    ${current}
    Screenshot
    Click Element    ${CONTENT_ONE}
    Switch Window     NEW
    Wait Sleep
    Click Element    ${CLOSE_POPUP}
    Click Element    ${RESERVE_BUTTON}
    Wait Sleep
    ${datetime}=  Get Text From Element     ${RESERVE_DATE}
    log    ${datetime}
    Should Be Equal    ${current}    ${datetime}
    Screenshot
    Close Browser


TC_003 Search With Dates And Who
    Open Test Browser
    [Documentation]    Verify that search with dates and who results correctly.
    Input Text    ${SEARCH_INPUT}    ${LOCATION_PHIPHI}
    Check In Check Out
    Wait Sleep
    Add Who All Increase
    Click Element    ${SEARCH_BUTTON}
    Wait Sleep
    ${current}=  Get Text From Element   ${SEARCH_DATE}
    log    ${current}
    Click Element    ${CLICK_SEARCH_WHO}
    Wait Sleep
    ${who_increse}=  Get Text From Element  ${SEARCH_WHO}
    log    ${who_increse}
    Screenshot
    Click Element    ${CLOSE_SEARCH}
    Click Element    ${CONTENT_ONE}
    Switch Window     NEW
    Wait Sleep
    Click Element    ${CLOSE_POPUP}
    Wait Sleep
    Click Element    ${RESERVE_BUTTON}
    Wait Sleep
    ${datetime}=  Get Text From Element     ${RESERVE_DATE}
    log    ${datetime}
    ${who_reserve}=  Get Text From Element   ${RESERVE_WHO}
    log    ${who_reserve}
    Wait Sleep
    Should Be Equal    ${current}    ${datetime}
    Should Be Equal    ${who_increse}    ${who_reserve}
    Close Browser