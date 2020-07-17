*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${login_UserId} =    id=inp_user
${login_Password} =    id=inp_password
${login_Button} =    id=login
${forgot_Password} =    xpath=//a[contains(text(),'Forgot')]

*** Keywords ***
login with userId and Password
    [Arguments]    ${userid}  ${Password}
    clear element text    ${login_UserId}
    clear element text    ${login_Password}
    input text    ${login_UserId}    ${userid}
    input text    ${login_Password}    ${Password}
    click button    ${login_Button}
    CLOSE ALL BROWSERS

