*** Settings ***
Library     SeleniumLibrary

#ATUALIZADO EM 18-07-2022#

*** Variables ***
${URL}                          http://staging.hermoney.com.br/sign-up/form-user
${BROWSER}                      chrome
${email}                        id:email
${password}                     id:password
${passwordconfirmation}         id:rePassword
${checkbox}                     id:chb_formuser
${buttonContinuar}              id:btn_continuar

${company}                       id:companyName
${cpf_cnpj}                      id:documentNumber
${locator_list}                  id:slc_formcompany
${option_servico}                id:slci_comércio
${buttonContinuar2}              id:btn_continuar

${user_nome}                     id:name
${phone}                         id:phone
${locator_list_2}                id:slc_formprofile
${option_outros}                 id:slci_outros
${buttonContinuar3}              id:btn_continuar

${message_alert}                 class:MuiAlert-message

${codigo_validacao}               Xpath://*[@id="root"]/div/div/div[2]/div/div[3]

${começar_usar}                   id:btn_começar_a_usar_a_hermoney

${buttonContinuar4}               id:btn_continuar

${premium_nao}                    id:btn_agora_não

${add_conta_manual}               id:btn_informe_uma_conta_bancária_manualmente

${add_conta_integrada}            id:btn_conecte_uma_conta_bancária

${premium_sim}                    id:btn_assinar_já_por_r$_47

#FLUXO DE ADIÇÃO DE CONTA BANCÁRIA
${banco_nubank}                 XPath://*[@id="btn_bank"]/div[1]
${agency}                       id:agency
${account}                      id:account
${apelido}                      id:name
${list_tipoconta}               id:slc_accounttype
${tipo_poupanca}                id:slci_poupança
${buttonContinuar5}             id:btn_continuar
${date_inicial}                 id:initialDate
${saldo_inicial}                id:initialBalance
${buttonContinuar6}             id:btn_continuar
${button_fechar}                id:btn_fechar

${campo_number_cartao}          class:sc-jqUVSM.cNlzPV
${input_number_cartao}          id:lastDigits
${button_continuar7}            id:btn_continuar
                  

*** Keywords ***
Acessar pagina da plataforma HerMoney

    Open browser    url=${URL}    browser=${BROWSER}        options=add_experimental_option('excludeSwitches', ['enable-logging'])

        Maximize Browser Window
    
    
    

Realizar cadastro etapa - perfil - Nome Usuária

    Wait Until Page Contains Element        ${user_nome}
    Click Element                           ${user_nome}
    Input Text                              ${user_nome}          Usuário teste (Fluxo Robot)    

Realizar cadastro etapa - usuaria - Email
     
    Wait Until Page Contains Element        ${email}
    Click Element                           ${email}
    Input Text                              ${email}            TestandoFluxo@Robot.com

Realizar cadastro etapa - perfil - Telefone
    Click Element                           ${phone}
    Input Text                              ${phone}              (49) 3996-6427

Realizar cadastro etapa - usuaria - Senha
    Click Element                           ${password}
    Input Text                              ${password}                Hermoney1$
    Click Element                           ${passwordconfirmation}
    Input Text                              ${passwordconfirmation}         Hermoney1$

Realizar cadastro etapa - usuaria - Politicas e Privacidade
    Wait Until Page Contains Element        ${checkbox}
    Click Element                           ${checkbox}
    Click Button                            ${buttonContinuar}
    
    Capture page screenshot

Realizar cadastro etapa - empresa - Nome Empresa

    Wait Until Page Contains Element        ${company}
    Click Element                           ${company}
    Input Text                              ${company}           Testando Fluxo Com Robot

Realizar cadastro etapa - empresa - CPF/CNPJ

    Click Element                           ${cpf_cnpj}
    Input Text                              ${cpf_cnpj}               55161171000194

Realizar cadastro etapa - empresa - Tipo de serviço
    Click Element                           ${locator_list}
    Get Element Count                       ${locator_list}
    Click Element                           ${option_servico}
    Get Element Count                       ${option_servico}                   
    Click Button                            ${buttonContinuar2}

    Capture page screenshot

Realizar cadastro etapa - perfil - Como conheceu a Hermoney

    Click Element                           ${locator_list_2}
    Get Element Count                       ${locator_list_2}
    Click Element                           ${option_outros}
    Get Element Count                       ${option_outros}                   
    Click Button                            ${buttonContinuar3}

    Capture page screenshot

Validacao Cadastro - código validação - aguardar mensagem de envio de codigo aparecer

     Wait Until Element Is Visible            ${codigo_validacao}
     
     Click Element                            ${codigo_validacao}
     Press Keys                               ${codigo_validacao}     text_fiel     AAAAAA
      
     Wait Until Page Contains Element         ${message_alert}       
  
     Capture Page screenshot

     Press Keys                               ${codigo_validacao}     text_fiel     AAAAAA

     Click Button                             ${buttonContinuar4} 

     Capture Page screenshot

#Seja Bem-Vinda - Começar a Usar Hermoney
    
    #Wait Until Page Contains Element          ${começar_usar}
    #Click Button                              ${começar_usar}
   

    #Capture Page screenshot

Plano - não ser premium
    Wait Until Page Contains Element           ${premium_nao}
    Click button                               ${premium_nao}

#FLUXO DE ADIÇÃO DE CONTA BANCÁRIA
Adicionar conta bancaria
     Wait Until Element Is Visible               ${add_conta_manual}
     Click button                                ${add_conta_manual}

     Click Element                               ${banco_nubank}
     Click Element                               ${agency}
     Input Text                                  ${agency}                0001
     Click Element                               ${account}
     Input Text                                  ${account}               0002
     Click Element                               ${apelido}
     Input Text                                  ${apelido}               Nubank
     Click Element                               ${list_tipoconta}
     Get Element Count                           ${list_tipoconta}
     Click Element                               ${tipo_poupanca}
     Get Element Count                           ${tipo_poupanca} 
     Click button                                ${buttonContinuar5}
     Click Element                               ${saldo_inicial}
     Input Text                                  ${saldo_inicial}           100,00
     Click button                                ${buttonContinuar6}
     Click Element                               ${campo_number_cartao}
     Input Text                                  ${input_number_cartao}        2541
     Click button                                ${button_continuar7}
     Wait Until Page Contains Element            ${button_fechar}
     Click button                                ${button_fechar}


