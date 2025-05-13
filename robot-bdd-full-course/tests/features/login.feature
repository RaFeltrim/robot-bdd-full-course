Feature: Login no sistema

  Scenario: Usuário faz login com sucesso
    Given que o usuário acessa a página de login
    When ele insere credenciais válidas
    Then ele deve ser redirecionado para o dashboard
