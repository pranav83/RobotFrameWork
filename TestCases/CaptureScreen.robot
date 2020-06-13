*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://opensource-demo.orangehrmlive.com/
*** Test Cases ***
LoginTC Test

    open browser    ${url}      ${browser}
    maximize browser window
    input text  id:txtUsername      Admin
    input text  id:txtPassword      admin123
#    capture element screenshot  xpath://div[@id='divLogo']//img     C:/Users/prana/PycharmProjects/RobotFrameWork/logo.png
#    capture page screenshot  C:/Users/prana/PycharmProjects/RobotFrameWork/LoginTC.png

    capture element screenshot  xpath://div[@id='divLogo']//img     logo.png
    capture page screenshot     LoginTC.png





*** Keywords ***

