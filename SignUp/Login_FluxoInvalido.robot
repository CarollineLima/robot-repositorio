*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${URL}                          https://app.hermoney.com.br/login
${BROWSER}                      chrome
${User}                         id:email
${password}                     id:password
${buttonContinuar0}             id:btn_continuar
${buttonContinuar1}             id:btn_continuar
${buttonContinuar2}             id:btn_continuar

${select_texto}                 id:email
                  


*** Keywords ***
Acessar pagina da plataforma HerMoney

    Open browser    url=${URL}    browser=${BROWSER}

   # Maximize Browser Window
    

Realizar Login Fluxo Inválido - Senha incorreta
    
    
    Wait Until Page Contains Element        ${User}
    Click Element                           ${User}
    Input Text                              ${User}            caroline.cavalcante16@gmail.com
    Click Element                           ${password}
    Input Text                              ${password}                Hermoney2.
    Click Button                            ${buttonContinuar0}

    sleep                                   1
      
    Capture page screenshot

    Close browser               


Realizar Login Fluxo Inválido - E-mail incorreto

    Open browser    url=${URL}    browser=${BROWSER}
    
    Wait Until Page Contains Element        ${User}
    Click Element                           ${User}
    Input Text                              ${User}            caroline.cavalcante16@gmail.com.br
    Click Element                           ${password}
    Input Text                              ${password}                Hermoney2$
    Click Button                            ${buttonContinuar1}

    sleep                                   1
      
    Capture page screenshot

    Close browser                           

Realizar Login Fluxo Inválido - Senha em branco (campo obrigatório)
    
    Open browser    url=${URL}    browser=${BROWSER}
    
    Wait Until Page Contains Element        ${User}
    Click Element                           ${User}
    Input Text                              ${User}            caroline.cavalcante16@gmail.com
    Click Element                           ${password}
    #Input Text                             ${password}                
    Click Button                            ${buttonContinuar2}

    sleep                                   1
      
    Capture page screenshot

    Close browser