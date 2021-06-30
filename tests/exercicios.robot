*** Settings ***

Documentation   Aqui estarão presentes todos os exercicios do prime expert.
...             

** Variables **
${NOME}     LANA    


&{PESSOA}
...         nome=LANA   
...         sobrenome=Terriano
...         idade=34
...         carro=sentra
...         sexo=fem
...         cpf=12345678909


@{fruta}    abacaxi     laranja     morango     banana  maçâ 

Cenario: Imprimir lista de Frutas


*** Test Cases ***
Cenario: Imprimir todas as informações da pessoa contidas no dicionario
    log to console  ${PESSOA.nome}
    log to console  ${PESSOA.sobrenome}
    log to console  ${PESSOA.idade}
    log to console  ${PESSOA.carro}
    log to console  ${PESSOA.sexo}
    log to console  ${PESSOA.cpf}



*** Settings ***
Documentation       Aqui estarão presentes todos os exercícios do prime experts.
...                 Lembrando que é de suma importância termos a descrição de cada arquivo.

*** Variables ***
${NOME}     Helder

&{PESSOA}      
...             nome=Helder     
...             sobrenome=Fernandes     
...             idade=27
...             carro=Sentra
...             sexo=masculino
...             cpf=12365498745

@{FRUTAS}       abacaxi     laranja     morango     banana      maçã

Imprimir 5 NOMES 

@{PAISES}       BRASIL     CANADA     JAPÃO     CHINA      RUSSA

*** Test Case ***
Cenario: Imprimir todas as informações da PESSOA contidas no dicionario
    Log To Console              ${PESSOA.nome}
    Log To Console              ${PESSOA.sobrenome}
    Log To Console              ${PESSOA.idade}
    Log To Console              ${PESSOA.carro}
    Log To Console              ${PESSOA.sexo}
    Log To Console              ${PESSOA.cpf}

Cenario: Imprimir lista de FRUTAS
    Log To Console              ${FRUTAS[0]}
    Log To Console              ${FRUTAS[1]}
    Log To Console              ${FRUTAS[2]}
    Log To Console              ${FRUTAS[3]}
    Log To Console              ${FRUTAS[4]}

Cenario: Meu teste de soma
    [Tags]          SOMA
    ${RESULTADO}                Somar dois numeros  658  845
    Log To Console              ${RESULTADO}

    ${RESULTADO_B}              Somar os numeros "1562" e "1895"
    Log To Console              ${RESULTADO_B}

Cenario: Criando meu e-mail
    [Tags]          EMAIL
    ${EMAIL_NOVO}   Criando e-mail  Helder  Fernandes  27
    Log To Console  ${EMAIL_NOVO}

Cenario: Utilizando o FOR na pratica
    [Tags]          LUPING
    Contar de 0 a 9

    Percorrer itens de uma lista


Cenario: For exercicio 1
    [Tags]      EXERC_1
    Contador de 0 a 10





CENARIO: For exercicio
    [Tags]  EXERC_2
    Imprimir OS PAISES



*** Keywords ***
Somar dois numeros 
    [Arguments]     ${NUM_A}    ${NUM_B}
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    [Return]    ${SOMA}

Somar os numeros "${NUM_A}" e "${NUM_B}"
    ${SOMA}         Evaluate    ${NUM_A}+${NUM_B}
    [Return]        ${SOMA}

Criando e-mail
    [Arguments]       ${NOME}       ${SOBRENOME}        ${IDADE}
    ${EMAIL}          Catenate      SEPARATOR=_     ${NOME}     ${SOBRENOME}    ${IDADE}@robot.com
    [Return]          ${EMAIL}
    
Contar de 0 a 9
    FOR  ${count}   IN RANGE   0   9
        Log To Console      ${count}
    END

Percorrer itens de uma lista
    FOR  ${frutas}  IN      @{FRUTAS}
        Log To Console      ${frutas}
    END


Contador de 0 a 10
    FOR ${numero} IN RANGE  0 10
        log to console      Estou no número: ${numero}
    AND

Imprimir OS PAISES
    FOR  ${PAIS}  IN      @{PAISES}
        Log To Console      Estou no pais: ${PAIS}
    END




Caso de Teste 01: Pesquisar produto existente
    Acessar a página home do site Automation Practice
    Digitar o nome do produto "Blouse" no campo de pesquisa
    Clicar no botão pesquisar
    Conferir se o produto "Blouse" foi listado no site