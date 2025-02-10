# Automação de Testes com Robot Framework

Este projeto é uma demonstração de automação de testes utilizando o **Robot Framework**, uma ferramenta de automação de código aberto que suporta testes de aceitação e desenvolvimento orientado a testes (ATDD).

---

## 🎯 Objetivo do Projeto

Automatizar cenários de teste para garantir a qualidade e a confiabilidade de um sistema, utilizando boas práticas e uma abordagem modular e reutilizável.

---

## 🛠️ Tecnologias Utilizadas

- **Robot Framework**: Framework principal para criação e execução dos testes.
- **Python**: Linguagem base para extensões e bibliotecas personalizadas.
- **SeleniumLibrary**: Para automação de testes em navegadores web.

---

## ⚙️ Pré-requisitos

1. **Python 3.7 ou superior instalado**.
2. Instalar o **Robot Framework**:
   ```bash
   pip install robotframework
3. Instalar a SeleniumLibrary:
   ```bash
   pip install robotframework-seleniumlibrary
4. Baixar o driver compatível com o navegador utilizado (ex.: ChromeDriver, GeckoDriver) e garantir que ele esteja no PATH do sistema.

## 📂 Estrutura do Projeto
```bash	
e2e-RobotFramework
├── tests/                # Arquivos de teste (.robot)
│   ├── e2e/              # Testes relacionados à interface web
│   └── api/              # Testes relacionados à api
├── resources/            # Arquivos de recursos (keywords, variables, etc.)
│   ├── keywords.robot    # Palavras-chave personalizadas
│   ├── variables.robot   # Variáveis globais
│   └── locators.robot    # Selectors e localizadores
├── logs/                 # Logs e relatórios gerados
├── libs/                 # Bibliotecas Python personalizadas
├── README.md             # Documentação do projeto
├── requirements.txt      # Dependências do projeto
└── robot.yaml            # Configuração para execução de testes (opcional)
```

## 🚀 Configuração e Execução

### Clonar o Repositório
```bash
git clone https://github.com/renanpacheco21/e2e-RobotFramework.git
cd e2e-RobotFramework
```
### Instalar Dependências
```bash
pip install -r requirements.txt
```
### Executar os testes
1. Para executar todos os testes:
   ```bash
   robot -d logs tests/
    ```
2. Para executar testes específicos:
   ```bash
   robot -d logs tests/web/
    ```
3. Para executar testes com tags específicas:
   ```bash
   robot -d logs -i tag tests/
   ```