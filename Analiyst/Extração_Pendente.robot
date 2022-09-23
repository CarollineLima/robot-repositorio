*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}                          https://app.hermoney.com.br/login
${BROWSER}                      chrome
${User}                         css:input[name=email]
${password}                     css:input[name=password]
${buttonContinuar1}             class:sc-eCImPb.cToAHe

${page_extrações}               id:nvitem_Extrações
${ultimo_lançamento}            class:sc-bczRLJ.iXuoJU









*** Keywords ***
Acessar pagina da plataforma HerMoney


    Open browser    url=${URL}    browser=${BROWSER}

    Maximize Browser Window
    

Realizar Login - Como Analista    
    
    Wait Until Page Contains Element        ${User}
    Click Element                           ${User}
    Input Text                              ${User}            carolinelima@hermoney.com.br
    Click Element                           ${password}
    Input Text                              ${password}                Hermoney2$
    Click Button                            ${buttonContinuar1}

    Capture page screenshot

Acessar filtro de extração pendente 