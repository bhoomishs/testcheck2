*** Settings ***
Documentation    API Testing in Robotframework
Library     SeleniumLibrary
Library    RequestsLibrary
Library    JSON
Library    Collection

*** Variables ***
${base_url}     https://reqres.in
*** Test Cases ***
Do a GET Request and validate the response code and response body
    [Documentation]     This test case verifies that the response code of the GET Request should be 200
    [Tags]    Smoke
    Set Test Message    verified successfully

    Create Session  mysession  ${base_url}
    ${response}=  GET On Session    mysession  /api/users/2
    ${status_code}=     Convert To String    ${response.status_code}
    Log To Console    ${status_code}
    Log To Console    ${response.content}
    Should Be Equal    ${status_code}   200  #Check Status as 200

#    Check Title as London from Response Body
#    ${title}=     ${response.json()}[0]  title
#    ${titleFromList}=  Get Fulrom List   ${title}  0
#    Should be equal  ${titleFromList}  London
#
#    Check location_type is present in the repsonse body
#    ${body}=  Convert To String  ${response.content}
#    Should Contain  ${body}  email
