*** Settings ***
Library           Collections
Library           RequestsLibrary

*** Variables ***
${BASE_URL}       https://jsonplaceholder.typicode.com

*** Test Cases ***
Verify GET Request
    [Documentation]    Verify the GET request to fetch user details
    Create Session    jsonplaceholder    ${BASE_URL}
    ${response}=      GET Request    jsonplaceholder    /users/1
    Log               ${response.status_code}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log               ${response.content}
