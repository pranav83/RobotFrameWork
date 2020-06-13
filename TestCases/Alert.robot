*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
Handling Alert Test

    open browser    ${url}      ${browser}
    maximize browser window
    click element  xpath://button[contains(text(),'Click Me')]
    sleep  3
#    this will handle alert by ok button
      handle alert  accept
#   this will handle alert by cancel
#    handle alert  dismiss
#   this will handle alert by keep it open
#    handle alert  leave
#   Verify alert window
#    alert should not be present  Press a button!




*** Keywords ***

