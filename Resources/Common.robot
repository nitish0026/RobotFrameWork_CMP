*** Settings ***
Library    SeleniumLibrary
Variables    ../Data/ConfigData/Variable.py
#Variables    ../Data/ConfigData/Config.py
Resource    ../Data/ConfigData/testingData.robot

*** Variables ***

*** Keywords ***
Begin Web Test
    open browser    ${URL}    ${BROWSER_TYPE}
    Maximize Browser Window

End Web Test
    close all browsers