*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser    https://www.google.com/    chrome
# Suite Teardown    Close All Browsers

*** Variables ***
${USERNAME}       usuario_teste
${PASSWORD}       senha_teste

*** Test Cases ***
Validar Login Com Sucesso
    Input Text    id:username    ${USERNAME}
    Input Text    id:password    ${PASSWORD}
    Click Button  id:login-button
    Page Should Contain    Bem-vindo, ${USERNAME}

Validar Login Falho
    Input Text    id:username    ${USERNAME}
    Input Text    id:password    senha_errada
    Click Button  id:login-button
    Page Should Contain    Credenciais inválidas
