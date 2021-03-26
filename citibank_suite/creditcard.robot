*** Settings ***
Library    DateTime
Library    SeleniumLibrary        
Library    OperatingSystem   


*** Test Cases ***
TC01_Valid_credential
    Open Browser    https://netbanking.hdfcbank.com/netbanking/    gc
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Select Frame    name=login_page
    Input Text    name=fldLoginUserId    dklsjfalsk
    Click Element    xpath=//img[@alt='continue']
    Unselect Frame

    

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