*** Settings ***
Resource     CadastroV2.robot

*** Test Cases ***

Caso numero 01:
        Acessar pagina da plataforma HerMoney

Caso numero 02:
        Realizar cadastro etapa - perfil - Nome Usuária
        
Caso numero 03:
        Realizar cadastro etapa - usuaria - Email

Caso numero 04:
        Realizar cadastro etapa - perfil - Telefone      

Caso numero 05:
         Realizar cadastro etapa - usuaria - Senha

Caso numero 06:
        Realizar cadastro etapa - usuaria - Politicas e Privacidade

Caso numero 07:
        Realizar cadastro etapa - empresa - Nome Empresa
        
Caso numero 08:
        Realizar cadastro etapa - empresa - CPF/CNPJ

Caso numero 09:
        Realizar cadastro etapa - empresa - Tipo de serviço

Caso numero 10:
        Realizar cadastro etapa - perfil - Como conheceu a Hermoney

Caso numero 11:
        Validacao Cadastro - código validação - aguardar mensagem de envio de codigo aparecer

#Caso numero 12:
        #Seja Bem-Vinda - Começar a Usar Hermoney

Caso numero 13:
        Plano - não ser premium

Caso numero 14:
        Adicionar conta bancaria

