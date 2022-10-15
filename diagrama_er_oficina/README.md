# Diagrama Entidade Relacionamento - Oficina Mecânica

## Objetivo:
Cria o esquema conceitual para o contexto de oficina com base na narrativa fornecida.

-> Nesse exercício decidi ir além do esquema conceitual e elaborar um diagrama entidade relacionamento a fim de aplicar em maior totalidade os conceitos apresentados durante as aulas.

## Narrativa:
* Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
* Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões  periódicas
* Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
* A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
* O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços
* A mesma equipe avalia e executa os serviços
* Os mecânicos possuem código, nome, endereço e especialidade
* Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.

## Entidades Criadas:
* Cliente - armazena dados básicos dos clientes.
* Veículo - contêm informações utilizadas para identificar o veículo e utiliza como chave estrangeira o id_cliente, já que um cliente eventualmente possui mais de um veículo.
* Ordem de serviço - transmite informações sobre quando a ordem de serviço foi emitida, seu status, valor e quando será finalizada. Uma ordem de serviço pode abranger um ou mais serviços a serem prestados. Podemos, por exemplo, em uma mesma ordem de serviço ser executada a revisão do veículo junto ao conserto de um dano no tanquinho de partida a frio. 
* Serviço - armazena informações sobre o tipo de serviço prestado, uma breve descrição, qual o prazo necessário para execução de cada serviço e seu valor. Este último é obtido a partir do somatório do valor da mão de obra e valor total do material utilizado. 
* Funcionário - apresenta informações básicas sobre os funcionários que executarão os serviços da oficina.
* Material - contém informações sobre os materiais a serem utilizados nos serviços, incluindo seu preço unitário. 
