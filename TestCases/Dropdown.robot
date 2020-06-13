*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${browser}  chrome
${url}      http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Handling DropDowns and Lists
    open browser     ${url}      ${browser}
    maximize browser window
    select from list by label  continents   Australia
    sleep  3
    select from list by index  continents   6

#       listbox
#    How to select multiple values
    select from list by label  selenium_commands    Switch Commands
    sleep  2
    select from list by label  selenium_commands    WebElement Commands
    sleep  2

    unselect from list by label  selenium_commands    Switch Commands
    sleep  2
    select from list by label  selenium_commands    Switch Commands













*** Keywords ***
