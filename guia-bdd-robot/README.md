# 🤖 Projeto de Automação de Testes com BDD e Robot Framework

Este projeto tem como objetivo fornecer uma base sólida para profissionais QA aplicarem **automação de testes com Robot Framework utilizando BDD (Behavior Driven Development)**, focando em ganho de produtividade, clareza e manutenção dos testes.

> Autor: **Rafael Feltrim**  
> Instagram: [@RaFeltrim](https://instagram.com/RaFeltrim)  
> GitHub: [github.com/RaFeltrim](https://github.com/RaFeltrim)

---

## 🔍 Sobre o Projeto

Este repositório foi estruturado para:

- Demonstrar como utilizar **Gherkin (BDD)** com Robot Framework.
- Criar uma separação clara entre **cenários de negócio** e **implementação técnica**.
- Implementar um pipeline de **CI com GitHub Actions** para execução automática dos testes.

A estrutura e exemplos aqui presentes são voltados para profissionais com **nível sênior**, que desejam evoluir na arquitetura de testes e automação avançada.

---

## 🗂️ Estrutura do Projeto

```plaintext
robot-bdd/
│
├── tests/
│   ├── features/ # Arquivos .feature em Gherkin
│   │   └── login.feature
│   └── suites/ # Casos de teste Robot ligados ao feature
│       └── test_login.robot
│
├── keywords/ # Keywords reutilizáveis
│   └── commons.robot
│
├── resources/ # Arquivos de variáveis e recursos
│   └── variables.robot
│
├── reports/ # Relatórios gerados após execução
│
├── .github/workflows/ # Pipeline de CI
│   └── robot.yml
│
├── README.md # Este arquivo
└── requirements.txt # Dependências do projeto
```

---

## 📘 Pré-requisitos

- Python 3.8+
- pip
- Google Chrome (para testes com Selenium)
- ChromeDriver compatível com a versão do navegador

---

## 📦 Instalação

1. Clone o repositório ou baixe o `.zip`:
   ```bash
   git clone https://github.com/SeuUsuario/robot-bdd.git
   cd robot-bdd
   ```

2. Crie um ambiente virtual (opcional, mas recomendado):
   ```bash
   python -m venv venv
   source venv/bin/activate  # Linux/macOS
   venv\Scripts\activate     # Windows
   ```

3. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   ```

---

## 🚀 Executando os testes

Execute os testes com o comando:

```bash
robot -d reports tests/
```

O relatório completo será gerado na pasta `reports/`.

---

## 📋 Exemplo de Feature: `login.feature`

```gherkin
Feature: Login

  Scenario: Usuário faz login com sucesso
    Given que o usuário acessa a página de login
    When preenche o usuário "admin" e senha "1234"
    Then deve ver a mensagem "Login realizado com sucesso"
```

---

## 🧠 Lógica do `test_login.robot`

```robot
*** Settings ***
Library           SeleniumLibrary
Resource          ../../keywords/commons.robot

*** Test Cases ***
Login com sucesso
    Acessa página de login
    Preenche usuário e senha    admin    1234
    Verifica mensagem           Login realizado com sucesso
```

---

## 🛠️ Exemplo de Keywords (`commons.robot`)

```robot
*** Keywords ***
Acessa página de login
    Open Browser    ${URL}    ${BROWSER}

Preenche usuário e senha
    [Arguments]    ${usuario}    ${senha}
    Input Text     id=username    ${usuario}
    Input Text     id=password    ${senha}
    Click Button   id=login

Verifica mensagem
    [Arguments]    ${mensagem}
    Element Text Should Be    id=message    ${mensagem}
```

---

## 🔄 Integração Contínua (CI)

Este repositório possui integração com GitHub Actions:

```yaml
# .github/workflows/robot.yml
name: Robot Framework CI

on:
  push:
    branches:
      - main

jobs:
  robot-tests:
    runs-on: ubuntu-latest
    steps:
      - name: Checkout code
        uses: actions/checkout@v2
      - name: Set up Python
        uses: actions/setup-python@v2
        with:
          python-version: 3.8
      - name: Install dependencies
        run: |
          python -m pip install --upgrade pip
          pip install -r requirements.txt
      - name: Run Robot Tests
        run: |
          robot -d reports tests/
      - name: Upload reports
        uses: actions/upload-artifact@v2
        with:
          name: robot-reports
          path: reports/
```

---

## 📚 Dicas de Aprendizado Contínuo

| Tópico                     | Onde estudar                                      |
|----------------------------|--------------------------------------------------|
| Fundamentos de QA          | Cursos da Alura, livros como “Agile Testing”     |
| Robot Framework avançado   | [robotframework.org](https://robotframework.org) |
| BDD com Robot              | [robotframework-cucumberlibrary](https://github.com/robotframework/RFCucumberLibrary) |
| Integração contínua        | GitHub Actions, Jenkins, GitLab CI               |

---

## 📅 Sugestão de Cronograma Semanal (fins de semana)

| Sábado                               | Domingo                                |
|--------------------------------------|----------------------------------------|
| Revisar conceitos de QA e BDD        | Prática com testes simples             |
| Criar cenários `.feature`            | Automatizar usando `test.robot`        |
| Estudar CI/CD                        | Rodar pipeline local/na nuvem          |

---

## 📫 Contato

Sinta-se à vontade para entrar em contato comigo:

💻 **GitHub**: [github.com/RaFeltrim](https://github.com/RaFeltrim)  
📸 **Instagram**: [@RaFeltrim](https://instagram.com/RaFeltrim)

Vamos automatizar com qualidade e eficiência! 🚀