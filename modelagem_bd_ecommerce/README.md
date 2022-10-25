# Banco de Dados - E-commerce

## Projeto de Banco de Dados desenvolvido no módulo **Banco de Dados SQL e NoSQL**.
### Proposta: Modelagem de um projeto lógico de banco de dados para um cenário de e-commerce. 

### Passo 1
O primeiro passo para a modelagem do banco de dados consistiu na revisão do diagrama EER realizado em uma etapa anterior, fazendo-se os ajustes que julgava-se necessários. 
O diagrama revisado encontra-se na imagem abaixo: 

![bd_revisado](https://user-images.githubusercontent.com/101302079/197658350-e3851a2c-8399-4d18-b0da-a70f1c09f982.png)

### Passo 2
O segundo passo se deu com a modelagem das tabelas do banco de dados definidas na montagem do esquema, disponível neste arquivo <>. Em resumo, as tabelas criadas foram: 
- clients - Identificação dos clientes 
- legalperson - Identificação das Pessoas Jurídicas Vendedor / Fornecedor
- orders - Pedidos Realizados
- payment - Formas de Pagamento
- product - Produtos Cadastrados
- productorder - Relação de Produtos x Pedidos
- productseller - Relação de Produtos x Vendedores
- productstorage - Relação de Produtos x Estoque
- productsupplier - Relação de Produtos x Fornecedores
- pstorage - Estoques Cadastrados
- seller - Vendedores Cadastrados
- supplier - Fornecedores Cadastrados

### Passo 3
No terceiro passo foram inseridos alguns dados fictícios para população do banco de dados e execução das consultas. A persistência dos dados encontra-se detalhada neste arquivo <>.

### Passo 4 
Realização de algumas queries de consulta ao banco de dados e cruzamento de informações. Os resultados obtidos encontram-se detalhados neste arquivo <> e as perguntas realizadas foram resumidas nas imagens abaixo. 

- Número de pedidos realizados em 2022, até o momento: 
![image](https://user-images.githubusercontent.com/101302079/197660369-8f79d7d8-b55c-45b0-9b0d-034afeca75a7.png)

- Pedidos realizados no primeiro semestre de 2022: 
![image](https://user-images.githubusercontent.com/101302079/197660390-3eb40309-8bd5-45c0-a48c-d6861d4e5afa.png)

- Número de Pedidos por Cliente:
![image](https://user-images.githubusercontent.com/101302079/197660593-3f114bf0-1a73-4613-8a91-d77ebdcc90fe.png)

- Quanto cada cliente gastou na plataforma? 
![image](https://user-images.githubusercontent.com/101302079/197660782-1b3b75fe-8d47-4b74-a622-520bd458c696.png)

- Quais clientes gastaram mais de R$1.500,00 na plataforma? 
![image](https://user-images.githubusercontent.com/101302079/197660948-4db538ca-06d9-4d70-94e5-ebc886197ce9.png)

- Ranking de venda dos produtos: 
![image](https://user-images.githubusercontent.com/101302079/197661019-d53d3916-b799-42c3-a491-e81fb2258d50.png)

- Relação entre produtos, fornecedores e estoques: 
![image](https://user-images.githubusercontent.com/101302079/197661166-c0a19201-2eed-4d72-8089-490716ef8d31.png)

- Relação entre produtos, vendedores e avaliação:
![image](https://user-images.githubusercontent.com/101302079/197661332-223900c5-120b-4952-b12a-e7ab2c01d71e.png)

