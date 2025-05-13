*** Settings ***
Resource    ../../resources/keywords.robot

*** Keywords ***
que o usuário acessa a página de login
    Open Browser    ${URL}    ${BROWSER}
    Page Should Contain Element    id:login-form

ele insere credenciais válidas
    Input Text    id:username    ${USERNAME}
    Input Text    id:password    ${PASSWORD}
    Click Button    id:login-button

ele deve ser redirecionado para o dashboard
    Page Should Contain Element    id:dashboard
