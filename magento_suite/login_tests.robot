*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem    

*** Test Cases ***
TC1_ValidCredential
    Log To Console    sanat
    Log To Console    welcome to the world of computer  

TC2_PrintDate
    ${date}    Get Current Date
    Log To Console    ${date}  
    ${pwd}    Set Variable    skp246
    Log To Console    ${pwd}  
    
TC3_OpenBrowser
    Append To Environment Variable    PATH    C:\\Components    
    Open Browser    https://magento.com/    gc
    Maximize Browser Window 
    Click Element    link=My Account  
    Input Text    id=email    balaji0017@gmail.com  
    Input Password    id=pass    balaji@12345
    Click Button    id=send2  
    Title Should Be    My Account            
    Click Link    Log Out 