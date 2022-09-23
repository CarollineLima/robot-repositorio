*** Settings ***
Resource     Login_FluxoInvalido.robot

*** Test Cases ***

CT - Abrir página de login:
        Acessar pagina da plataforma HerMoney

CT - Senha incorreta:
        Realizar Login Fluxo Inválido - Senha incorreta

CT - E-mail incorreto:
        Realizar Login Fluxo Inválido - E-mail incorreto

CT - Senha em branco (campo obrigatório):
        Realizar Login Fluxo Inválido - Senha em branco (campo obrigatório)
