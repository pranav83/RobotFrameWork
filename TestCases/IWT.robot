*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register
*** Test Cases ***
#  This is Speed test 
TimeOutTest

    open browser    ${url}      ${browser}




    set selenium implicit wait    10  seconds


    select radio button  Gender     M
    input text  name:FirstName      Neelraj
    input text  name:LastName       Pothiwala
    input text  name:Email      ppothiwala@gmail.com
    input text  name:Password   Neelraj11
    input text  name:ConfirmPassword    Neelraj11



*** Keywords ***

