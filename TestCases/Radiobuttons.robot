*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing RadioButtons and CheckBoxes
    open browser     ${url}      ${browser}
    maximize browser window
    set selenium speed  2seconds

#    This are radio button
    select radio button     sex     Female
    select radio button     exp     5

#    Selecting Checkbox
    select checkbox  BlackTea
    select checkbox  RedTea

    unselect checkbox  BlackTea