*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://testautomationpractice.blogspot.com/
*** Test Cases ***
Table validation Test

    open browser    ${url}      ${browser}
    maximize browser window

    ${rows}=    get element count  xpath://table[@name='BookTable']//tbody/tr

    ${columns}=     get element count  xpath://table[@name='BookTable']//tbody/tr/th
    log to console  ${rows}
    log to console  ${columns}

    ${data}=    get text  xpath://td[contains(text(),'Master In Selenium')]
    log to console  ${data}

    table column should contain  xpath://table[@name='BookTable')]    2   Author
    table row should contain     xpath://table[@name='BookTable')]    4   Learn JS






*** Keywords ***

