*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
MyTestCase

    open browser    ${url}      ${browser}
    maximize browser window

    open browser  http://automationpractice.com/index.php   chrome
    maximize browser window

    close all browsers



*** Keywords ***
loginToApplication
