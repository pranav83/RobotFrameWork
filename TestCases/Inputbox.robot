*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}    https://demo.nopcommerce.com/



*** Test Cases ***
TestInputBox
    open browser  ${url}    ${browser}
    maximize browser window
    title should be     nopCommerce demo store
    click link  xpath://a[@class='ico-login']
    ${"email_txt"}  set variable  id:Email

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}
#     element should not be visible  ${"email_txt"}

    sleep  5
    input text  ${"email_txt"}  ppothiwala@gmail.com
    sleep  10
    clear element text  ${"email_txt"}
    sleep  5
    close browser

    close browser


*** Keywords ***
