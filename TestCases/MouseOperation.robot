*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://swisnl.github.io/jQuery-contextMenu/demo.html
*** Test Cases ***
Right click Test

    open browser    ${url}      ${browser}
    maximize browser window
#    This particular action will perform right click action
    open context menu  xpath://span[@class='context-menu-one btn btn-neutral']

    sleep  5

#    Double click action on another browser
    go to  https://testautomationpractice.blogspot.com/
    maximize browser window
    double click element  xpath://button[contains(text(),'Copy Text')]

    sleep  5

#    drag and drop  option
    go to  https://demoqa.com/droppable/
    maximize browser window
    drag and drop  xpath://p[contains(text(),'Drag me to my target')]     xpath://div[@id='droppable']

    sleep  3

    close browser









*** Keywords ***

