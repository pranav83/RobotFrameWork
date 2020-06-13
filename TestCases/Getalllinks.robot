*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.newtours.demoaut.com/
*** Test Cases ***
Link Test

    open browser    ${url}      ${browser}
    maximize browser window
   ${alllinkscount}=     get element count  xpath://a
   log to console  ${alllinkscount}

   @{Linkitems}     create list
   :FOR     ${i}    IN RANGE    1   ${alllinkscount}+1
   \  ${Linktext}=  get text  xpath:(//a)[${i}]
   \    log to console  ${Linktext}

    close browser




*** Keywords ***

