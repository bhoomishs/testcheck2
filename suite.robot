*** Settings ***
Library           SeleniumLibrary
Library           Collections
Library           OperatingSystem
Library           String
Suite Setup       Setup Browser
Suite Teardown    Teardown Browser
Library    ../Test_data/setup.py


*** Variables ***
${SEARCH_TERM}    OpenAI
${SEARCH_TEXT}    search

*** Test Cases ***
Verify URL Contains Search Term
    Open Google
    Perform Search    ${SEARCH_TERM}
    Verify URL Contains    ${SEARCH_TEXT}

*** Keywords ***
Setup Browser
    Open Browser    https://www.google.com    headlesschrome

Teardown Browser
    Close Browser

Open Google
    # Navigates to Google home page
    Go To    https://www.google.com

Perform Search
    [Arguments]    ${search_term}
    Input Text    name:q    ${search_term}
    Press Key    name:q    \\13  # Press Enter

Verify URL Contains
    [Arguments]    ${expected_text}
    ${current_url}=    Get Location
    Should Contain    ${current_url}    ${expected_text}
