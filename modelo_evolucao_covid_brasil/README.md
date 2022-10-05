## Análise da evolução da pandemia de COVID-19 no Brasil 

#### Para as análises em questão utilizou-se uma amostragem do arquivo covid_19_data.csv no período de Janeiro/2020 a Maio/2020.

###### Etapas de execução do projeto: 
    1. Importação das bibliotecas gerais utilizadas no projeto
    2. Importação e Limpeza dos dados a serem analisados
    3. Criação do recorte de análise: COVID-19 no Brasil
    4. Plotagem dos gráficos demonstrando a atual situação da pandemia:
        - Evolução de casos confirmados
        - Estimativa do número de novos casos por dia
        - Evolução do número de mortes
    5. Criação de um modelo matemático para determinar a taxa de crescimento média de COVID no Brasil no período especificado
    6. Predições do futuro da pandemia no país
        A partir do número de casos da doença confirmados no Brasil no período estipulado foram feitas as seguintes previsões utilizando-se do modelo ARIMA:
        - Previsão do número de infecções nos 30 dias subsequentes
    7. Criação de um modelo de crescimento da pandemia no Brasil utilizando-se a biblioteca fbprophet:
        - Previsão do momento de estabilização da pandemia em função da contaminação da população 
        

