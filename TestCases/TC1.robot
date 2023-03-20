*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://192.168.1.254/login


*** Test Cases ***
LoginTest
    open browser    ${url} ${browser}
    loginToApplication
    close browser


*** Keywords ***
loginToApplication
    Sleep   3s
    input text  id:username     admin
    input text  id:userpassword     ananas_2
    click element  xpath://*[@id="loginBtn"]/span
    Sleep   5s

