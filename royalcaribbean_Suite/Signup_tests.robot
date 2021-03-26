*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem 


*** Test Cases ***
TC01_Login
    Open Browser    https://www.royalcaribbean.com/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s