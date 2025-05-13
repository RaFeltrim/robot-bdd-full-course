# Robot BDD Full Course

Este repositório reúne todos os recursos, exemplos e projetos que fundamentaram meu conhecimento em **Cypress** e **Robot Framework**, organizado para servir de base a um curso introdutório/avançado para QA Leads e times de automação.

---

## 📖 Sumário

1. [Visão Geral](#visão-geral)  
2. [Conteúdo do Curso](#conteúdo-do-curso)  
3. [Estrutura do Repositório](#estrutura-do-repositório)  
4. [Instalação](#instalação)  
5. [Execução dos Testes](#execução-dos-testes)  
6. [CI/CD](#cicd)  
7. [Projetos Externos](#projetos-externos)  
8. [Recursos Adicionais](#recursos-adicionais)  
9. [Licença](#licença)  

---

## Visão Geral

- **Objetivo**: Demonstrar práticas de BDD com Robot Framework e integrar aprendizado com exemplos reais de projetos em Cypress e RF.  
- **Público-alvo**: QA Leads, Analistas e Engenheiros de Automação que buscam estruturar projetos de teste de forma escalável e colaborativa.

---

## Conteúdo do Curso

- **Módulo 1**: Fundamentos de BDD  
- **Módulo 2**: Estrutura de Projeto Robot Framework  
- **Módulo 3**: Escrita de Features em Gherkin  
- **Módulo 4**: Implementação de Keywords (RF e Python)  
- **Módulo 5**: Relatórios, Logs e Debug  
- **Módulo 6**: Integração CI/CD  
- **Laboratórios**: Login, Automação de API, Paralelismo com Pabot  

Detalhes completos em `docs/content_programatico.md`.

---

## Estrutura do Repositório

```plaintext
robot-bdd-full-course/
├── README.md
├── requirements.txt
├── resources/ # Keywords genéricos
├── tests/
│   ├── features/ # .feature files
│   ├── steps/ # Implementação de steps
│   └── test_suites/ # Suites organizadas
├── variables/ # Variáveis de ambiente e config
├── docs/ # Materiais do curso
│   ├── slides.md
│   ├── cheatsheet.md
│   ├── content_programatico.md
│   ├── exercicios.md
│   ├── overview.md
│   └── resources.md
├── .github/
│   └── workflows/ci.yml # Pipeline de CI/CD
└── external/ # Projetos que serviram de base
    ├── curso-robot/
    └── robot-framework-organo/
```

---

## Instalação

1. Clone o repositório:  
   ```bash
   git clone https://seu-repositorio.git
   cd robot-bdd-full-course
   ```

2. Instale as dependências:  
   ```bash
   pip install -r requirements.txt
   ```

---

## Execução dos Testes

- **Todos os testes**:  
   ```bash
   robot --outputdir reports tests/
   ```

- **Por tag ou feature**:  
   ```bash
   robot --include smoke tests/features/login.feature
   ```

- **Em paralelo (Pabot)**:  
   ```bash
   pabot --processes 4 --outputdir reports tests/
   ```

---

## CI/CD

Pipeline de exemplo em GitHub Actions em `.github/workflows/ci.yml`, que:

- Instala dependências
- Executa testes
- Guarda relatórios como artefatos

---

## Projetos Externos

Em `external/` estão os repositórios:

- **curso-robot**: exemplos didáticos de Robot Framework
- **robot-framework-organo**: projeto corporativo completo

Use-os para aprofundar conceitos e padrões.

---

## Recursos Adicionais

- [Robot Framework User Guide](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html)
- [Test Automation University](https://testautomationu.applitools.com/)
- Comunidades: Slack, StackOverflow

Mais detalhes em `docs/resources.md`.

---

## Licença

Este projeto é licenciado sob a [MIT License](LICENSE).