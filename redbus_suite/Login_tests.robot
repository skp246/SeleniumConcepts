*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem  

*** Test Cases ***
TC01_NewRegistration
    Open Browser    https://www.redbus.in/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    id=signin-block
    Click Element    xpath=//li[contains(text(),'Sign In/Sign Up')]
    Wait Until Element Is Visible    xpath=//div[contains(text(),'Sign in to avail exciting discounts and cashbacks!!')]    
    Input Text    id=mobileNoInp    9000000000
    