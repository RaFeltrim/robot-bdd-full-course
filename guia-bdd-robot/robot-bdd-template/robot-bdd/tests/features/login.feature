Feature: Login
  Scenario: Usuário faz login com sucesso
    Given que o usuário acessa a página de login
    When preenche o usuário "admin" e senha "1234"
    Then deve ver a mensagem "Login realizado com sucesso"
