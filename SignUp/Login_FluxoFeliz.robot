*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}                          https://app.hermoney.com.br/login
${BROWSER}                      chrome
${User}                         id:email
${password}                     id:password
${buttonContinuar1}             id:btn_continuar
                  


*** Keywords ***
Acessar pagina da plataforma HerMoney

    Open browser    url=${URL}    browser=${BROWSER}

    Maximize Browser Window
    

Realizar Login Fluxo Happy Day
    
    
    Wait Until Page Contains Element        ${User}
    Click Element                           ${User}
    Input Text                              ${User}            caroline.cavalcante16@gmail.com
    Click Element                           ${password}
    Input Text                              ${password}                Hermoney2$
    Click Button                            ${buttonContinuar1}

    sleep                                   1
    
    

    Capture page screenshot
