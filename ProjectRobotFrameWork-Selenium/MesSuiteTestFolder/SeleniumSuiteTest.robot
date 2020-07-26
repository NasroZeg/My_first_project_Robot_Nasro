*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
my first test selenium
    Open Browser    https://bdeb.omnivox.ca    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    5
    Input Text    id = Identifiant    6156682  
    Input Password    id = Password    abcd2001     
    Click Button        //*[@id="formLogin"]/div[4]/div/button
    Sleep    5    
    Log    Finish program    