*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.google.com/
*** Test Cases ***
Navigation Test

    open browser    ${url}      ${browser}
    maximize browser window
    ${loc}=   get location
    log to console  ${loc}

    go to  http://www.bing.com/
    ${loc1}=    get location
    log to console  ${loc1}

    go back
    ${loc2}=    get location
    log to console  ${loc2}






*** Keywords ***

