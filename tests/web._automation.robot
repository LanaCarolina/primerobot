*** Settings ***
Documentation       Aqui estarão presentes todos os cenários de teste Web.

Resource        ../resources/Resource.robot

Test Setup         abrir navegador
Test Teardown       

*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site