# TPC#3: Automação de Testes de Aceitação

Repositório destinado à entrega do TPC#3 da disciplina de Engenharia de Software.

## 👩‍💻 Autora
* Jullia Fernandes

## 📱 Sobre o Projeto
Este projeto contém um aplicativo mock em Flutter desenvolvido do zero especificamente para validar o **Cenário 1 da User Story 01 (US01): Gestão de Múltiplos Dependentes - Adição de novo dependente**. 

O objetivo principal deste repositório é demonstrar a configuração e a execução de um teste de aceitação automatizado na interface de usuário (UI), garantindo que os critérios de aceitação estipulados no TPC#2 sejam atendidos.

## 🛠️ Tecnologias e Ferramentas
* **Linguagem/Framework:** Dart e Flutter
* **Ferramenta de Automação:** Pacotes `integration_test` e `flutter_test` (nativos do SDK)
* **Hardware:** Testes validados em dispositivo físico Android via Depuração USB.

## 🚀 Como executar o teste localmente

1. Clone este repositório e acesse a pasta do projeto:
```bash
git clone <link-do-seu-repositorio>
cd app_saude_tpc3
```

2. Instale as dependências do Flutter:
```bash
flutter pub get
```

3. Com um emulador aberto ou dispositivo físico conectado, execute o comando de teste integrado:
```bash
flutter test integration_test/app_test.dart
```

*(Nota: Caso possua múltiplos dispositivos conectados, adicione a flag `-d <ID_DO_DISPOSITIVO>` ao final do comando).*
