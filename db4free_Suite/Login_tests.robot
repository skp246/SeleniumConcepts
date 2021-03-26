*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem 
#Library    SeleniumLibrary

*** Test Cases ***
TC01_Login
    Open Browser    https://www.db4free.net/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath=//a[@href="/phpMyAdmin"]
    
    Close Window
    
    Get Webelement    locator
    
    
    
    #FOR    ${element}    IN    @{elements_list}
    #    Keyword    arg
    #END