*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
#For loop with String

#    :FOR    ${i}    IN      PRANAV  NEELRAJ  TISHA   JAGRUTI
#    \   log to console  ${i}

For loop String list test
    @{namelist}     create list     PRANAV NEELRAJ TISHA JAGRUTI
    :FOR    ${i}    IN      @{namelist}
    \   log to console  ${i}







*** Keywords ***

