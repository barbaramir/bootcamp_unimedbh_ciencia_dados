## Utilizando Dynamo DB

Neste exercício do módulo **Imersão Cloud Computer** fomos incentivados a dar os primeiros passos na utilização do Dynamo DB, um banco de dados gerenciado pela AWS e que utiliza features Relacionais (SQL) e Não Relacionais (NoSQL). Os dados utilizados foram disponibilizados pelo instrutor Cassiano Peres e encontra-se disponível neste repositório para download.
O passo a passo do projeto encontra-se abaixo. 

### 1. Criando a tabela Music
    aws dynamodb create-table \
        --table-name Music \
        --attribute-definitions \
            AttributeName=Artist,AttributeType=S \
            AttributeName=SongTitle,AttributeType=S \
        --key-schema \
            AttributeName=Artist,KeyType=HASH \
            AttributeName=SongTitle,KeyType=RANGE \
        --provisioned-throughput \
            ReadCapacityUnits=10,WriteCapacityUnits=5
            
![1m](https://user-images.githubusercontent.com/101302079/198854792-c358da80-f74b-4fac-9ff4-cdcb5bf02c4c.PNG)

Visualização da tabela no AWS Console: 
![1 1](https://user-images.githubusercontent.com/101302079/198854828-85cc0d40-1e1c-4699-8a5a-53181c9b3195.PNG)

### 2. Inserindo um item
    aws dynamodb put-item \
        --table-name Music \
        --item file://itemmusic.json \

![2m](https://user-images.githubusercontent.com/101302079/198854918-bf048848-1aa5-4a52-89e5-a078b102e07a.PNG)

### 3. Inserindo múltiplos itens
    aws dynamodb batch-write-item \
        --request-items file://batchmusic.json
        
![3mm](https://user-images.githubusercontent.com/101302079/198855046-214b7491-87c1-469e-bbc2-1b5cc03f8a7b.png)

![3 1m](https://user-images.githubusercontent.com/101302079/198855085-298ea5d3-3d77-4a9b-b0c7-9f998ecd73cb.PNG)

### 4. Criando um index global secundário baeado no título do álbum
    aws dynamodb update-table \
        --table-name Music \
        --attribute-definitions AttributeName=AlbumTitle,AttributeType=S \
        --global-secondary-index-updates \
            "[{\"Create\":{\"IndexName\": \"AlbumTitle-index\",\"KeySchema\":[{\"AttributeName\":\"AlbumTitle\",\"KeyType\":\"HASH\"}], \
            \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5      },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"

![4m](https://user-images.githubusercontent.com/101302079/198855224-85ef3438-24dd-46e4-9de9-e4d84ae78fe3.png)

### 5. Criando um index global secundário baseado no nome do artista e no título do álbum
    aws dynamodb update-table \
        --table-name Music \
        --attribute-definitions\
            AttributeName=Artist,AttributeType=S \
            AttributeName=AlbumTitle,AttributeType=S \
        --global-secondary-index-updates \
            "[{\"Create\":{\"IndexName\": \"ArtistAlbumTitle-index\",\"KeySchema\":[{\"AttributeName\":\"Artist\",\"KeyType\":\"HASH\"}, {\"AttributeName\":\"AlbumTitle\",\"KeyType\":\"RANGE\"}], \
            \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5      },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"
            
![5mn](https://user-images.githubusercontent.com/101302079/198855317-3a582bab-700b-46f4-a346-c2625c3a4ba1.png)

### 6. Criando um index global secundário baseado no título da música e no ano
    aws dynamodb update-table \
        --table-name Music \
        --attribute-definitions\
            AttributeName=SongTitle,AttributeType=S \
            AttributeName=SongYear,AttributeType=S \
        --global-secondary-index-updates \
            "[{\"Create\":{\"IndexName\": \"SongTitleYear-index\",\"KeySchema\":[{\"AttributeName\":\"SongTitle\",\"KeyType\":\"HASH\"}, {\"AttributeName\":\"SongYear\",\"KeyType\":\"RANGE\"}], \
            \"ProvisionedThroughput\": {\"ReadCapacityUnits\": 10, \"WriteCapacityUnits\": 5      },\"Projection\":{\"ProjectionType\":\"ALL\"}}}]"

![6mn](https://user-images.githubusercontent.com/101302079/198855739-bd65e3a3-8ff8-4ab2-b7b2-464247ed9173.png)

Visualizando os índices no console: 

![6nh](https://user-images.githubusercontent.com/101302079/198855755-6494355e-901b-43c6-aef7-456a81e0e1c9.PNG)

### 7. Pesquisar item por artista
    aws dynamodb query \
        --table-name Music \
        --key-condition-expression "Artist = :artist" \
        --expression-attribute-values  '{":artist":{"S":"Iron Maiden"}}'
        
### 8. Pesquisar item por artista e título da música
    aws dynamodb query \
        --table-name Music \
        --key-condition-expression "Artist = :artist and SongTitle = :title" \
        --expression-attribute-values file://keyconditions.json
        
### 9. Pesquisa pelo index secundário baseado no título do álbum
    aws dynamodb query \
        --table-name Music \
        --index-name AlbumTitle-index \
        --key-condition-expression "AlbumTitle = :name" \
        --expression-attribute-values  '{":name":{"S":"Fear of the Dark"}}'

### 10. Pesquisa pelo index secundário baseado no nome do artista e no título do álbum
    aws dynamodb query \
        --table-name Music \
        --index-name ArtistAlbumTitle-index \
        --key-condition-expression "Artist = :v_artist and AlbumTitle = :v_title" \
        --expression-attribute-values  '{":v_artist":{"S":"Iron Maiden"},":v_title":{"S":"Fear of the Dark"} }'
        
### 11. Pesquisa pelo index secundário baseado no título da música e no ano
    aws dynamodb query \
        --table-name Music \
        --index-name SongTitleYear-index \
        --key-condition-expression "SongTitle = :v_song and SongYear = :v_year" \
        --expression-attribute-values  '{":v_song":{"S":"Wasting Love"},":v_year":{"S":"1992"} }'

