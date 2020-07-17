*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/PageObjects/CBCLoginPage.robot
Variables    ../Data/ConfigData/Variable.py
Resource    ../Data/TestData/${ENVIRONMENT_TYPE}/CBCCreateCustomer.robot
*** Variables ***


*** Test Cases ***
create customer
    Should be able to login and create customer    ${userID}    ${Password}


*** Keywords ***
Should be able to login and create customer
    [Arguments]     ${Username}    ${Password}
    Begin Web Test
    Login with userId and Password  ${Username}    ${Password}
    #Create New Customer

