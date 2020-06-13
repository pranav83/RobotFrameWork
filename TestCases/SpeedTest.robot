*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
#  This is Speed test
SpeedTest
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}      ${browser}
    maximize browser window
    set selenium speed  2 seconds
    select radio button  Gender     M
    input text  name:FirstName      Neelraj
    input text  name:LastName       Pothiwala
    input text  name:Email      ppothiwala@gmail.com
    input text  name:Password   Neelraj11
    input text  name:ConfirmPassword    Neelraj11
    ${speed}=   get selenium speed
    log to console  ${speed}


*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  xpath://input[@id='Email']   ppothiwala@gmail.com
    input text  xpath://input[@id='Password']   Neelraj11
    click element  xpath://input[@class='button-1 login-button']
