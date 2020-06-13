*** Settings ***
Library  SeleniumLibrary
Resource    ../Resources/login_Resources.robot
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers
Test Template  Invalid login


*** Test Cases ***         username       password
Right User and empty Password       admin@yourstore.com     ${EMPTY}
Right User and wrong Password       admin@yourstore.com     xyz
Wrong User and right Password       adm@yourstore.com     admin
Wrong User and empty Password       admi@yourstore.com     ${EMPTY}
Wrong User and Wrong Password       adm@yourstore.com       xyz



*** Keywords ***
Invalid login
    [Arguments]  ${Username}    ${Password}
    Input Username  ${Username}
    Input Password  ${Password}
    Click login Button
    Error massage should visible