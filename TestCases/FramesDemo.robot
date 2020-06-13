*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.selenium.dev/selenium/docs/api/java/
*** Test Cases ***
FrameTest

    open browser    ${url}      ${browser}
    maximize browser window
# you select id name or xpath
    select frame  packageListFrame
    click link  org.openqa.selenium
    unselect frame

    sleep  3
    select frame  packageFrame
    click link  WebDriver
    unselect frame

    sleep  3
    select frame  classFrame
    click link  Index
    unselect frame

    sleep  3
    close browser



*** Keywords ***
