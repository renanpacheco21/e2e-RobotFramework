*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser    https://admin-demo.nopcommerce.com/    chrome
Suite Teardown    Close All Browsers

*** Variables ***
${USERNAME}       admin@yourstore.com
${PASSWORD}       admin

*** Test Cases ***
Validar Login Com Sucesso
    Clear Element Text    id:Email
    Input Text            id:Email    ${USERNAME}
    Clear Element Text    id:Password
    Input Text            id:Password    ${PASSWORD}
    Click Element         xpath://button[text()='Log in']
    

Validar Login Falho
    Input Text             id:Email    ${USERNAME}
    Input Text             id:Password    senha_errada
    Click Element          xpath://button[text()='Log in']
    Page Should Contain    Login was unsuccessful. Please correct the errors and try again. The credentials provided are incorrect
