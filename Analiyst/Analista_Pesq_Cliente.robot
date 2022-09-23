*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}                          https://app.hermoney.com.br/login
${BROWSER}                      chrome
${User}                         css:input[name=email]
${password}                     css:input[name=password]
${buttonContinuar1}             class:sc-eCImPb.cToAHe

${search}                       css:input[name=search]
${all_users}                    XPath://*[@id="root"]/div/main/div[2]/div/div[1]/div[3]/p[2]
${pesq_all_users}               XPath://*[@id="root"]/div/main/div[2]/div[2]/div/input


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

Pesquisar Cliente

    Wait Until Page Contains Element                    ${search}
    Click Element                                       ${search}
    Input Text                                          ${search}       Carol prod
    Input Text                                          ${search}       Únika gestão
    Input Text                                          ${search}       Club da carne
    Click Element                                       ${all_users}
    Click Element                                       ${pesq_all_users}
    Input Text                                          ${pesq_all_users}       Carol
    Input Text                                          ${pesq_all_users}       Maria Helena
    Input Text                                          ${pesq_all_users}       Ana Laura
    Input Text                                          ${pesq_all_users}       Karina Lemos
