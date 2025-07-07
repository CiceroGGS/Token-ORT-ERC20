# 🪙 Token ORT - Contrato ERC20

## 📖 Sobre o Projeto

Este repositório contém a implementação de um token padrão **ERC20**, chamado **Token ORT**, desenvolvido e testado no ambiente **Remix IDE**.  

O projeto serve como um exemplo prático e educacional da estrutura padrão que o Remix oferece, incluindo contratos, scripts de implantação e testes.

A estrutura do projeto está dividida em três diretórios principais:

- `contracts`
- `scripts`
- `tests`

Cada um contém exemplos que demonstram **boas práticas** dentro do ecossistema Remix.

---

## ✨ Funcionalidades

✅ **Contratos de Exemplo**  
A pasta `contracts` contém três contratos com níveis de complexidade crescentes, ideais para o aprendizado de **Solidity**.

✅ **Scripts de Implantação**  
A pasta `scripts` inclui exemplos de como implantar um contrato (ex: **Storage**) usando as bibliotecas **web3.js** e **ethers.js**.

✅ **Testes Unitários**  
O diretório `tests` contém exemplos de testes para os contratos:
- Testes em **Solidity** (Ballot)
- Testes em **JavaScript** com **Mocha-Chai** (Storage)

✅ **Formatação de Código**  
O projeto inclui um arquivo de configuração `.prettierrc.json` para garantir um estilo de código consistente:
- largura de linha: **80 caracteres**
- `tabWidth`: **4 espaços**

---

## 🛠️ Estrutura do Projeto

O workspace padrão do Remix utilizado neste projeto é composto por:

/contracts → Contratos em Solidity.
/scripts → Scripts em TypeScript para interagir e implantar os contratos.
/tests → Arquivos de teste para garantir o funcionamento correto dos contratos.


---

## 🚀 Como Utilizar no Remix IDE

Este projeto foi projetado para funcionar perfeitamente no **Remix IDE**.

### 1️⃣ Abra o Remix IDE
- Acesse o link do Remix.
- Você verá o workspace padrão.

### 2️⃣ Compile o Contrato
- Vá para a aba **Solidity Compiler**.
- Selecione o contrato desejado (ex: `Storage.sol`).
- Clique em **Compile**.

### 3️⃣ Execute os Scripts de Implantação
- Vá para a aba **File Explorer**.
- Encontre a pasta `scripts`.
- Clique com o botão direito no script desejado (ex: `deploy_with_ethers.ts`).
- Selecione **Run**.

> ⚠️ Importante: O contrato Solidity já deve estar compilado antes de executar o script.  
> A saída do script aparecerá no terminal do Remix.

> 💡 Para implantar um contrato diferente do Storage, atualize o nome do contrato e os argumentos do construtor no arquivo de script.

### 4️⃣ Execute os Testes
- O Remix permite executar testes em **Solidity** e **JavaScript** diretamente na aba **Solidity Unit Testing**.

---

## 📦 Módulos Suportados

O ambiente de scripts do Remix IDE possui suporte limitado para importação de módulos. Os módulos atualmente suportados são:

- `ethers`
- `web3`
- `swarmgw`
- `chai`
- `multihashes`
- `remix`
- `hardhat` *(apenas para o objeto `hardhat.ethers`)*

⚠️ **Observação:** Tentar importar módulos não suportados resultará em erro.

---

> Feito com ❤️ para aprendizado e prática no **Remix IDE**.


