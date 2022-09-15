*** Settings ***
Library           Selenium2Library

*** Variables ***
${url}            https://opensource-demo.orangehrmlive.com/
${browser}        chrome
${uname}          xpath=//*[@id="txtUsername"]
${pass}           xpath=//*[@id="txtPassword"]
${login_btn}      xpath=//*[@id="btnLogin"]
${WelcomeAccount}    welcome
${logout_btn}     //*[@id="welcome-menu"]/ul/li[3]/a

*** Test Cases ***
Login
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${uname}    Admin
    Input Text    ${pass}    admin123
    Click Button    ${login_btn}

Logout
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${uname}    Admin
    Input Text    ${pass}    admin123
    Click Button    ${login_btn}
    click_element    ${WelcomeAccount}
    Wait Until Element Is Visible    ${logout_btn}
    click_element    ${logout_btn}
