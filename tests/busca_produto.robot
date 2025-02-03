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