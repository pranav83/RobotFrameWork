*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot

*** Variables ***
${browser}  chrome
${url}  http://www.newtours.demoaut.com/
*** Test Cases ***
Test1

#    launchBrowser
#    input text  name:userName   mercury
#    input text  name:password   mercury

# Perameterized
#  launchBrowser       ${url}      ${browser}
#    input text  name:userName   mercury
#    input text  name:password   mercury

#get title
    ${Pagetitle}=    launchBrowser       ${url}      ${browser}
    log to console  ${Pagetitle}
    log  ${Pagetitle}
    input text  name:userName   mercury
    input text  name:password   mercury







*** Keywords ***
#launchBrowser
#     open browser    ${url}      ${browser}
#     maximize browser window

#Parameterized
#launchBrowser
#    [Arguments]  ${appurl}    ${appbrowser}
#     open browser    ${appurl}      ${appbrowser}
#     maximize browser window
#     ${title}=   get title
#     [Return]  ${title}
