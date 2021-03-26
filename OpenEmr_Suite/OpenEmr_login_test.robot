*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem   


*** Test Cases ***
TC01_Valid_credential
    Open Browser    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)   
    Click Element    xpath=//button[@type='submit']
    Title Should Be    OpenEMR
    Page Should Contain    Patient
    Mouse Over    id=username
    Click Element    xpath=//li[text()='Logout']
    Close Browser
    

TC02_InValid_credential
    Open Browser    https://demo.openemr.io/b/openemr/interface/login/login.php?site=default    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Input Text    id=authUser    admin213
    Input Password    id=clearPass    pass
    Select From List By Label    name=languageChoice    English (Indian)   
    Click Element    xpath=//button[@type='submit']
    Element Should Contain    xpath=//div[contains(text(),'Invalid')]    Invalid username or password
    Close Browser       