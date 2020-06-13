*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.countries-ofthe-world.com/flags-of-the-world.html
*** Test Cases ***
Scrolling Test

    open browser    ${url}      ${browser}
    maximize browser window

#    scrolling page till pixel
#    sleep  3
#    execute javascript  window.scrollTo(0,2000)

# Scrolling till we find the element
#    sleep  3
#    scroll element into view  xpath://table[1]//tbody[1]//tr[86]//td[1]//img[1]

# scrolling to end of page
    sleep  2
    execute javascript  window.scrollTo(0,document.body.scrollHeight)   #scorll till bottom
    sleep  2
    execute javascript  window.scrollTo(0,-document.body.scrollHeight)  #again scroll till top of page




*** Keywords ***

