# Curso Robot Framework

Repositório com exercícios e exemplos práticos do curso de Robot Framework.

---

## 📖 Conteúdo do Curso

### 1. **Instalação e Configuração**
- Configuração de ambiente Python (Anaconda, `venv`).
- Instalação de dependências:
  ```bash
  pip install robotframework robotframework-seleniumlibrary
  ```
- Ajustes de PATH e uso de `python -m robot`.

---

### 2. **Estrutura de um Projeto Robot Framework**
- **Pastas principais**:
  - `testes/` → arquivos `.robot` com Suites e Test Cases.
  - `resources/` → arquivos de Resource, com Keywords reutilizáveis.
  - `variaveis.txt` (ou `.py`, `.yaml`) → definição centralizada de Variáveis.
- **Organização**:
  - Suites, Test Cases, Settings, Variables, Keywords.

---

### 3. **Sintaxe Básica**
- Estrutura de um arquivo `.robot`:
  ```robot
  *** Settings ***
  *** Variables ***
  *** Test Cases ***
  *** Keywords ***
  ```
- Como importar bibliotecas e recursos:
  ```robot
  Library    SeleniumLibrary
  Resource   ../resources/common.robot
  ```

---

### 4. **Uso de Variáveis**
- **Escopos**: Suite, Test Case, Global.
- **Tipos**: `${STRING}`, `@{LIST}`, `&{DICT}`.
- **Carregamento via arquivo externo**: `variaveis.txt`, `.py`, ou `.yaml`.

---

### 5. **Reutilização com Resource Files**
- Definir Keywords comuns (ex.: login, navegação, validações).
- Facilitar manutenção e legibilidade do código.

---

### 6. **SeleniumLibrary**
- Principais Keywords:
  - `Open Browser` / `Close Browser`
  - `Click Element`, `Input Text`, `Wait Until Element Is Visible`
- Seletores de elementos:
  - `id=`, `xpath=`, `css=`.
- Gerenciamento de janelas, frames e alertas.

---

### 7. **Estratégias de Localização de Elementos**
- Uso de XPath avançado e CSS selectors.
- Localização por atributos, texto parcial e posições relativas.

---

### 8. **Tags e Seleção de Testes**
- Marcar testes com `Tags`.
- Executar subconjuntos de testes:
  ```bash
  robot --include <tag> ./testes
  robot --exclude <tag> ./testes
  ```

---

### 9. **Setup e Teardown**
- Configuração de inicialização e limpeza:
  - Suite Setup / Teardown.
  - Test Setup / Teardown.

---

### 10. **Relatórios e Logs**
- Geração automática de arquivos:
  - `log.html`, `report.html`, `output.xml`.
- Análise avançada de falhas e screenshots automáticas.

---

### 11. **Debugging**
- Uso dos parâmetros:
  ```bash
  robot --debug ./testes
  robot --consoledebug ./testes
  ```
- Integração com VS Code:
  - Extensão: Robot Framework LSP.
  - Arquivo `launch.json` para debugging.

---

### 12. **Boas Práticas**
- Nomes descritivos para Suites e Test Cases.
- Aplicação de **DRY** (Don’t Repeat Yourself) com Resource Files.
- Modularização de Keywords.
- Uso de versionamento de código para os testes.

---

### 13. **Próximos Passos**
- Integração com ferramentas de CI/CD (GitHub Actions, Jenkins).
- Testes de API com `RequestsLibrary`.
- Estratégias de execução paralela.
- Uso do padrão Page Object Model com Robot Framework.

---

## 🚀 Como Começar

1. Clone este repositório:
   ```bash
   git clone https://github.com/RaFeltrim/curso-robot.git
   cd curso-robot
   ```

2. Instale as dependências:
   ```bash
   pip install -r requirements.txt
   # ou
   pip install robotframework robotframework-seleniumlibrary
   ```

3. Execute os testes:
   ```bash
   robot ./testes
   ```

4. Veja os relatórios gerados:
   - `./output.xml`
   - `./report.html`
   - `./log.html`

---

## 📋 Dicas
- **Personalize** o arquivo `variaveis.txt` (ou use um `variables.py`) com:
  - URLs.
  - Credenciais.
  - Caminhos do WebDriver antes de rodar os testes.

---

## 📜 Licença
Este projeto é distribuído sob a [MIT License](LICENSE). Sinta-se à vontade para usar e contribuir!

---