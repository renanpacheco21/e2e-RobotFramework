*** Settings ***
Library  RequestsLibrary

*** Test Cases ***
Verificar Produtos na API
    Create Session               api    https://automationexercise.com/api
    ${response}  GET On Session  api    /productsList
    Should Be Equal As Strings  ${response.status_code}  ${200}
    Log  ${response.json()}