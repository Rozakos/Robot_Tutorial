*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm


*** Test Cases ***
Testing Radio Button and Check Boxes
    open browser    ${url}   ${browser}
    maximize browser window
    #Anti gia sleep 2s bazoyme to apo katw
    set selenium speed    2s

    # Selecting Radio Buttons
    select radio button    sex  Female

    select radio button    sex  Male

    select radio button    exp  3


    # Select Check Boxes
    select checkbox     Manual Tester

    select checkbox     Automation Tester

    unselect checkbox    Manual Tester

    unselect checkbox    Automation Tester

    close browser

*** Keywords ***
