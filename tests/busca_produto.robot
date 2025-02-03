*** Settings ***
Library           SeleniumLibrary
Library    Process
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

    
Adicionar Produto ao Carrinho
    Click Link                            xpath=//a[@href='/products']
    Wait Until Page Contains              All Products
    Click Element                         xpath://a[contains(text(), 'Add to cart')]
    Wait Until Page Contains              Added!
    Wait Until Element Is Visible         xpath://button[@data-dismiss='modal']    2s
    Click Element                         xpath://button[@data-dismiss='modal']
    Click Link                            xpath=//a[@href='/view_cart']
    Wait Until Page Contains              Shopping Cart
    Wait Until Page Contains              Item