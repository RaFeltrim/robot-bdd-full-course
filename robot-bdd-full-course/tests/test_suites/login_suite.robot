*** Settings ***
Suite Setup    Setup Browser
Suite Teardown    Close All Browsers

*** Test Cases ***
Login Test
    [Tags]    smoke
    que o usuário acessa a página de login
    ele insere credenciais válidas
    ele deve ser redirecionado para o dashboard

*** Keywords ***
Setup Browser
    Open Browser    ${URL}    ${BROWSER}
