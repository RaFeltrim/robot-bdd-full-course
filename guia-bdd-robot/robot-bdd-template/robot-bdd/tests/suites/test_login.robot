*** Settings ***
Library    SeleniumLibrary
Resource    ../../keywords/commons.robot

*** Test Cases ***
Login com sucesso
    Acessa página de login
    Preenche usuário e senha    admin    1234
    Verifica mensagem    Login realizado com sucesso
