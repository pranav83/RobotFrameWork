*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/
*** Test Cases ***
LoginTest

    open browser    ${url}      ${browser}
    maximize browser window
    loginToApplication
    close browser



*** Keywords ***
loginToApplication
    click link  xpath://a[@class='ico-login']
    input text  xpath://input[@id='Email']   ppothiwala@gmail.com
    input text  xpath://input[@id='Password']   Neelraj11
    click element  xpath://input[@class='button-1 login-button']
