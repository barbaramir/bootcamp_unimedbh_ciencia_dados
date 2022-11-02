Neste módulo do curso **Explorando Dados Demográficos com Serviços de Big Data na AWS** utilizaremos os serviços S3, Glue, Athena e QuickSight da AWS para execução de queries e visualização de gráficos. Os dados utilizados no exercício foram disponibilizados pelo instrutor Cassiano Peres e trata-se de uma base com dados demográficos da população brasileira, podendo ser encontrado para download neste [link](https://github.com/barbaramir/bootcamp_unimedbh_ciencia_dados/tree/main/exploring_athena_and_quicksight_aws/data).

### Etapas do desenvolvimento: 

#### 1. Criar bucket no Amazon S3

- Amazon S3 Console -> Buckets -> Create bucket -> Bucket name [nome_do bucket] - Create bucket
- Create folder (Criar uma pasta chamada ```/output``` e outra com o nome do seu conjunto de dados. Este nome irá definir o nome da tabela criada no Glue)
- Upload dos arquivos de dados localizados na pasta ```/data```

#### 2. Criar Glue Crawler

- Amazon Glue Console -> Crawlers -> Add Crawler
- Source type [Data Stores] -> Crawl all folders
- Data store [S3] -> Include path [caminho do diretório dos dados de entrada]
- Create IAM Role
- Frequency [Run on demand]
- Database name [seu_nome_de_db]
- Group behavior [Create a single schema for each S3 path]
- Finish
- Databases -> Tables -> Visualizar dados das tabelas criadas

#### 3. Criar aplicação no Amazon Athena

- Query editor -> Settings -> Manage settings -> Query result location and encryption -> Browse S3 -> selecionar o bucket criado
- Selecionar Database -> criar queries (exemplos na pasta ```/src```)
- Verificar queries não salvas no bucket criado no S3
- Salavar queries -> Executar novamente -> Verificar no bucket criado no S3

#### 4. Visualizar dados no Amazon QuickSight

- Datasets -> Create new dataset -> Athena -> Name [NomeDoDataSet] -> Create
- Select database -> select table -> Edit or preview -> Save & visualize
- Criar visualizações selecionando colunas, criando filtros e parâmetros e selecionando Visual types para gráficos.

### Queries realizadas
As queries realizadas na aplicação Amazon Athena estão disponibilizadas neste [link]() em formato .csv para download. Abaixo foram inseridas, em resumo, imagens que demonstram a montagem das queries e os resultados obtidos. 

* Query População Total
![1](https://user-images.githubusercontent.com/101302079/199558560-98ccc256-8262-4b39-89cf-37e394ef1a8e.PNG)

* Query População Região Norte
![5](https://user-images.githubusercontent.com/101302079/199558893-7b6d4e52-eec7-4c53-a5cd-b9eaed22a141.PNG)

* Query População Região Sul
![3](https://user-images.githubusercontent.com/101302079/199559298-59f996af-91ee-4c90-9cc3-fb5f423514f6.PNG)

* Query População Estado de São Paulo
![4](https://user-images.githubusercontent.com/101302079/199559534-32708310-2488-4566-b626-75130ce27ade.PNG)

* Query População Cidade de São Paulo 
![2](https://user-images.githubusercontent.com/101302079/199559682-1697c34f-4b22-454f-b7f5-e651abb36ce1.PNG)
