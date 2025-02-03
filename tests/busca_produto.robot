*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser    http://automationexercise.com   chrome
Suite Teardown    Close All Browsers

*** Variables ***


*** Test Cases ***
Validar Pagina de Produtos
    Click Link                    xpath=//a[@href='/products']
    Wait Until Page Contains      All Products
    Click Link                    xpath=//a[@href='/product_details/1']
    Wait Until Page Contains      Availability: In Stock


Pesquisar um Produto
    Click Link                    xpath=//a[@href='/products']
    Wait Until Page Contains      All Products
    Input Text                    id:search_product    T-shirt
    Click Button                  id:submit_search  
    Wait Until Page Contains      Searched Products  
    Wait Until Page Contains      T-Shirt