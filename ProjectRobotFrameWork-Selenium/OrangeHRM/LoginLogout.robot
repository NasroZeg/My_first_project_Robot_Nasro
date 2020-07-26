*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
LoginLogoutTest
    [Documentation]    ceci est un test de login/logout
    Open Browser    ${url}    ${typeBroser}
    Maximize Browser Window
    Set Browser Implicit Wait    5
    #Input Text    id=txtUsername    ${data}[0]   
    #Input Password    id=txtPassword    ${data}[1]
    Input Text    id=txtUsername    ${dataLogin}[username]   
    Input Password    id=txtPassword    ${dataLogin}[password]
    Click Button    id=btnLogin  
    Click Element    id=welcome
    Set Browser Implicit Wait    5
    Click Element    link=Logout       
    Log    fin de test     
    
*** Variables ***
# variable scalaire
${url}    https://opensource-demo.orangehrmlive.com/index.php/auth/login   
${typeBroser}    chrome   
# variable liste
@{data}    Admin    admin123   
# variable de type dictionaire
&{dataLogin}    username=Admin    password=admin123     
 