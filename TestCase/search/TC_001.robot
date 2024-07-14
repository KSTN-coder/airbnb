*** Settings ***
Resource   ../resources/keywords.robot

*** Test Cases ***
Search for a Place to Stay
    [Documentation]    Test the search functionality for a place to stay
    Open Browser To Airbnb
    Search For Place    New York
    Verify Search Results    New York

Search for Experiences
    [Documentation]    Test the search functionality for experiences
    Open Browser To Airbnb
    Search For Experiences    Paris
    Verify Search Results    Paris

*** Keywords ***
Open Browser To Airbnb
    Open Browser    ${BASE_URL}    chrome
    Maximize Browser Window

Search For Place
    [Arguments]    ${location}
    Input Text    id=bigsearch-query-detached-query-input    ${location}
    Click Button    css=button[type="submit"]

Search For Experiences
    [Arguments]    ${location}
    Click Element    css=a[href="/s/experiences"]
    Input Text    id=bigsearch-query-detached-query-input    ${location}
    Click Button    css=button[type="submit"]

Verify Search Results
    [Arguments]    ${location}
    Wait Until Element Contains    css=h1    ${location}
    [Teardown]    Close Browser