*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
#For loop with list
#    @{items}=   create list  1  2   3   4   5   6
#    :FOR    ${i}    IN      @{items}
#    \   log to console  ${i}


For loop test to exist loop
    @{items}    create list  1  2   3   4   5   6   7   8   9
    :FOR    ${i}    in  @{items}
    \   log to console  ${i}
    \   exit for loop if    ${i}==3




*** Keywords ***

