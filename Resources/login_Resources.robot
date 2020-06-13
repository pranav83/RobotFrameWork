*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${Login url}    https://admin-demo.nopcommerce.com/login

*** Keywords ***
Open My Browser
     open browser    ${Login url}      ${browser}
    maximize browser window
Close My Browsers
    close all browsers

Open Login Page
    go to   ${Login url}

Input Username
    [Arguments]   ${Username}
    input text  id:Email    ${Username}

Input Password
    [Arguments]  ${Password}
    input text  id:Password     ${Password}
Click login Button
    click element  xpath://input[@class='button-1 login-button']
Click logout Button
    click link  logout
Error massage should visible
    page should contain  Login was unsuccessful
Dashboard page should be visible
    page should contain  Dashboard





