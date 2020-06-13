*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
#for loop Test1
#    : FOR  ${i}     IN RANGE  0   10
#    \   LOG TO CONSOLE  ${i}

for loop Test2
    :FOR   ${i}    IN  1 2 3 4 5 6 7 8 9
    \   log to console  ${i}





*** Keywords ***

