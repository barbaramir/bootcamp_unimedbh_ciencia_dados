# Banco de Dados - Oficina Mecânica

## Projeto de Banco de Dados desenvolvido no módulo **Banco de Dados SQL e NoSQL**.
### Proposta: Modelagem de um projeto lógico de banco de dados para um cenário de oficina mecânica com base no esquema relacional.

### Passo 1
O primeiro passo para a modelagem do banco de dados consistiu na revisão do diagrama EER realizado em uma etapa anterior, fazendo-se os ajustes que julgava-se necessários. 
O diagrama revisado encontra-se na imagem abaixo: 

![esquema](https://user-images.githubusercontent.com/101302079/197908288-e60a0bfb-70cf-4ce8-9913-1ef7ba5fe659.png)

### Passo 2
O segundo passo se deu com a modelagem das tabelas do banco de dados definidas na montagem do esquema, disponível neste [arquivo](https://github.com/barbaramir/bootcamp_unimedbh_ciencia_dados/blob/main/modelagem_bd_oficina_mecanica/tables.sql). Em resumo, as tabelas criadas foram: 
- Clients - Identificação dos clientes 
- Vehicles - Identificação dos veículos 
- Employee - Identificação dos funcionários 
- Service - Modalidades de serviços prestados
- ServiceOrder - Ordens de serviço
- Material - Materiais para utilização na oficina
- OS_Service - Detalhamento dos serviços prestados em cada ordem de serviço 
- Service_Material - Relação de material utilizado em cada serviço realizado
- Service_Employee - Funcionário responsável pela execução de cada serviço

### Passo 3
No terceiro passo foram inseridos alguns dados fictícios para população do banco de dados e execução das consultas. A persistência dos dados encontra-se detalhada neste [arquivo](https://github.com/barbaramir/bootcamp_unimedbh_ciencia_dados/blob/main/modelagem_bd_oficina_mecanica/data.sql).

### Passo 4 
Realização de algumas queries de consulta ao banco de dados e cruzamento de informações. Os resultados obtidos encontram-se detalhados neste [arquivo](https://github.com/barbaramir/bootcamp_unimedbh_ciencia_dados/blob/main/modelagem_bd_oficina_mecanica/queries.sql) e as perguntas realizadas foram resumidas nas imagens abaixo. 

- Relação de veículos por cliente:
![image](https://user-images.githubusercontent.com/101302079/197909055-4472a02a-0b56-4b71-a4f1-eebfb746db1f.png)

- Número de revisões e consertos realizados na oficina e valor agregado:
![image](https://user-images.githubusercontent.com/101302079/197909127-d37ba51a-f065-4fc3-8867-65723f2d8f3f.png)

- Qual cliente gastou mais na oficina?
- ![image](https://user-images.githubusercontent.com/101302079/197909173-81841926-de2e-45e3-8c6b-d6870b9fd776.png)

- Relação entre veículo, serviços executados, profissional que executou e materiais utilizados:
![image](https://user-images.githubusercontent.com/101302079/197909294-4c625dd2-9236-47ff-aaf5-8657ce761368.png)
