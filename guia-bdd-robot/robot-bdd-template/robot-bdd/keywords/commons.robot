*** Keywords ***
Acessa página de login
    Open Browser    https://exemplo.com/login    chrome

Preenche usuário e senha
    [Arguments]    ${usuario}    ${senha}
    Input Text    id=username    ${usuario}
    Input Text    id=password    ${senha}
    Click Button    id=login

Verifica mensagem
    [Arguments]    ${mensagem}
    Element Text Should Be    id=message    ${mensagem}