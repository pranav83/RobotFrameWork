*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/login_Resources.robot
Library  DataDriver  ../TestData/Testdata.xlsx   sheet_name=Sheet1
Suite Setup  Open My Browser
Suite Teardown  Close My Browsers

*** Test Cases ***
LoginTestwithExecl using    ${username}      ${password}



*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input Username   ${username}
    Input Password   ${password}
    Click login Button
    Error massage should visible






