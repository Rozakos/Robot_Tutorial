*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://192.168.1.254/login



*** Test Cases ***
TestingInputBox
    open browser    ${url}  ${browser}
    maximize browser window
    title should be    .::Welcome to the Web-Based Configurator::.
    ${username_txtbox}  set variable    id:username
    ${password_txtbox}  set variable    id:userpassword

    sleep    4s
    element should be visible   ${username_txtbox}
    element should be enabled   ${username_txtbox}
    input text   ${username_txtbox}     admin
    sleep    3s
    clear element text  ${username_txtbox}
    sleep    3s
    input text  ${password_txtbox}      ananas_2
    sleep    3s
    clear element text  ${username_txtbox}
    sleep    3s
    close browser

*** Keywords ***

loginToApplication
    sleep   3s
    input text  id:username     admin
    input text  id:userpassword     ananas_2
    click element  xpath://*[@id="loginBtn"]/span
    sleep   5s
