*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demo.automationtesting.in/Windows.html
*** Test Cases ***
TabWindow Test

    open browser    ${url}      ${browser}
    maximize browser window
    click element  xpath://div[@id='Tabbed']//button[@class='btn btn-info'][contains(text(),'click')]
    select window  title=Sakinalium | Home
    click element  xpath://ul[@class='nav navbar-nav navbar-right']//a[contains(text(),'Contact')]
    sleep  3
    close all browsers




*** Keywords ***

