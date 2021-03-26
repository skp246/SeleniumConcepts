*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem  

*** Test Cases ***
TC01_NewRegistration
    Open Browser    https://www.medibuddy.in/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=wzrk-cancel
    Click Link    Signup
    Wait Until Element Is Visible    xpath=//label[text()='Name']
    Input Text    name=firstName    SKP
    Input Text    name=phone    9000000000
    Input Text    name=username    skp246@gmail.com
    Input Password    name=password    skp246 
    Click Element    xpath=//span[text()='Show password'] 
    Click Element    xpath=//button[contains(text(),'Register')]  