use ecommerce; 

insert into clients(Fname, Minit, Lname, CPF, Birth_date, Email, PhoneNumber, Adress, Num, Complement, ZIPcode, Neighborhood, City, State)
		values ('Maria', 'Do', 'Carmo', 12345678932, '1996-01-18', 'maria@email.com', '31985632596', 'Rua das Flores', '102', null, '30189652', 'Florença', 'Recife', 'PB'),
        ('Ana', 'B', 'Dias', 81159632569, '1965-02-01', 'ana@email.com', '31985697845', 'Rua Betume', '1098', 'Apto 102', '10236985', 'Laranjeiras', 'Betim', 'MG'),
        ('Paulo', 'A', 'Pedrosa', 98563259874, '2002-12-26', 'paulo@email.com', '33975869', 'Avenida Sardenha', '1050A', null, '3369850', 'Limoeiro', 'Macéio', 'AL'),
        ('Beatriz', 'J', 'Souza', 14785269854, '1980-03-30', 'beatriz@email.com', '33963852140', 'Avenida Paulista', '3030', 'Apto 1032', '40569852', 'Centro', 'São Paulo', 'SP'),
		('Pedro', 'H', 'Silva', 03152698745, '1975-07-21', 'pedro@email.com', '31659874', 'Avenida Brigadeiro Faria Lima', '10963', 'Apto 1400', '40569100', 'Centro', 'São Paulo', 'SP'),
		('Lucas', 'De', 'Oliveira', 78945612380, '1990-07-07', 'lucas@email.com', '99985697412', 'Rua Margarida', '100', null, '30000850', 'Jardins', 'Belo Horizonte', 'MG'),
		('Bernardete', 'L', 'Martini', 03156985236, '1950-10-02', 'bernardete@email.com', '33985612', 'Avenida Copacabana', '18000', 'Apto 2001', '33650250', 'Copacabana', 'Rio de Janeiro', 'RJ'),
		('Bernardo', 'B', 'Rodrigues', 12345674102, '1990-11-03', 'bernardo@email.com', '37985412030', 'Rua B', '10', null, '31203690', 'Pinheiros', 'Salvador', 'BA');

insert into product(Pname, Category, Classification_kids, Descr, Size, Val, Rating) values
					('Blusa Moletom Nasa', 'Vestiário', true, 'Moletom Feito Em 50% Algodão E 50% Poliéster,Modelo Canguru, Com Bolso Frontal E Capuz', 'G', 96.90, 4.3),   
                    ('Echo Dot (4ª Geração)', 'Eletrônicos', false, 'Smart Speaker com Alexa | Música, informação e Casa Inteligente - Cor Preta', '100x100x89mm', 380.00, 4.8),
					('LEGO® City Galinheiro', 'Brinquedos', true, 'Kit de Construção (101 peças)', '17x14x4cm', 102.99, 4.9),
					('Caneta Marca Texto, Faber-Castell', 'Papelaria', true, 'Não mancha o outro lado da folha, Destampado não seca, Tinta superfluorescente', '17,5x8,1x1,7cm', 23.00, 5.0),
					('Creme De Avelã Com Cacau Nutella 650 Gramas', 'Alimentos', false, 'Ferrero Nutella 650g. Creme de avelã com cacau. Nutella traz mais sabor aos pães e frutas do café da manhã', '20x14x14cm', 52.98, 3.8),
					('Jogo de Colcha Algodão Lux 200 fios - Casal Altenburg', 'Casa e Banho', false, 'Dupla face 200 fios 100% algodão, Enchimento 100% Poliéster, Jogo de colcha casal', '79,8x35,8x26cm', 414.66, 5.0),
					('É Assim que Acaba', 'Livros', false, '1 Capa comum – Edição padrão, 18 janeiro 2018', '20,6x13,4x2,2cm', 34.88, 4.8),
					('O pequeno príncipe', 'Livros', true, 'por Antoine de Saint-Exupéry (Autor), Dom Marcos Barbosa (Tradutor)', null, 0.00, default),
					('1000 Lugares Para Conhecer Antes de Morrer','Livros', false, 'Capa comum, por Patricia Shultz', '19x13,6x3,6cm', 129.90, 4.1);

insert into payment (PaymentType, CardName, CardNumber, ExpirationDate) values
					('Boleto Bancário', null, null, null), 
                    ('Pix', null, null, null),
                    ('Cartão de Crédito', 'Pedro Silva', '0000111122223333', '2027-03-03'),
                    ('Cartão de Crédito', 'Lucas Oliveira', '0123456789635214', '2030-12-20');

insert into orders(idOrderClient, idOrderPayment, OrderDate, OrderStatus, OrderDescription, OrderValue, PaymentCash, SendValue, DeliveryForecast, TrackingCode) values
				(1, 1, '2022-03-03', 'Entregue', 'Compra via web', 150, true, 7.90, '2022-03-05', 'AB12369854'),
                (4, 2, '2022-10-23', 'Processando', 'Compra via web', 200, true, 14.90, '2022-10-30', 'AB78963258'),
				(5, 3, '2022-10-10', 'Enviado', 'Compra via web', 380, false, 0.00, '2022-10-28', 'AB78963698'),
				(6, 4, '2022-02-28', 'Entregue', 'Compra via web', 415, false, 29.90, '2022-02-28', 'AB02369852'),
				(7, 2, '2022-10-22', 'Processando', 'Compra via web', 1569, true, 0.00, '2022-10-24', 'AB78958742'),
                (1, 1, '2022-03-05', 'Entregue', 'Compra via web', 600, true, 10.90, '2022-03-10', 'AB85968585'),
                (1, 1, '2022-03-20', 'Entregue', 'Compra via web', 850, true, 10.90, '2022-03-30', 'AB12125896'),
				(4, 2, '2022-08-09', 'Entregue', 'Compra via app', 1350, true, 0.90, '2022-08-15', 'AB78747596'),
                (5, 3, '2022-10-24', 'Enviado', 'Compra via app', 1050.50, false, 18.00, '2022-10-28', 'AB78459685');

insert into pstorage(City, State, Quantity) values
					('São Paulo', 'SP', 1050),
                    ('São Paulo', 'SP', 327),
                    ('Brasília', 'DF', 10258),
                    ('Rio de Janeiro', 'RJ', 10),
                    ('Porto Alegre', 'RS', 458),
                    ('Belo Horizonte', 'MG', 312),
                    ('Belo Horizonte', 'MG', 125),
                    ('São Paulo', 'SP', 3);

insert into legalperson(SocialName, AbstName, CNPJ, PJType, PhoneNumber, Adress, Num, Complement, ZIPcode, Neighborhood, City, State) values
						('Magazine Maria Ltda', 'Magama', 12369852369852, 'Vendedor', '3136895263', 'Avenida Brasil', '1212', null, '32075890', 'Roça Grande', 'Rio de Janeiro', 'RJ'),
                        ('Tomaz Eletrônicos Ltda', 'Tomaz Eletrônicos', 12587410102598, 'Vendedor', '3333526985', 'Avenida Laura Paz', '10120', null, '32569852', 'Palmares', 'Belo Horizonte', 'MG'),
                        ('Chein Vestimentas Ltda', 'Chein', 12312396963258, 'Vendedor', '3033525241', 'Rua Bragança Paulista', '305', null, '40526398', 'Madre Gertrudes', 'Maringá', 'PR'),
                        ('Livraria do Zezé Ltda', 'Livraria do Zezé', 14785296321503, 'Fornecedor', '2156985632', 'Rua das Orquídeas', '145', null, '40569852', 'Pinheiros', 'São Paulo', 'SP'),
						('Happy Brinquedos Ltda', 'Happy Brinquedos', 10203069852365, 'Fornecedor', '2133968520', 'Rua das Ostras', '960', null, '40582693', 'Centro', 'São Paulo', 'SP'),
						('Lua Acessórios Ltda', 'Lua Acessórios', 12506396302050, 'Fornecedor', '3125896352', 'Rua dos Carneiros', '312', null, '33698520', 'Centro', 'Rio de Janeiro', 'RJ');

insert into supplier(idSupplierPJ, StatusSupplier) values
					(4, default), 
                    (5, 'Ativo'),
                    (6, default);
                    
insert into seller(idSellerPJ, StatusSeller, Rating, SalesNumber, RegistrationDate) values
					(1, default, 4.9, 50690, '2018-06-21'),
                    (2, 'Inativo', 3.5, 15690, '2020-08-01'),
                    (3, 'Ativo', 4.5, 21500, '2021-10-12');
                    
insert into productstorage(idProductStorage, idPProduct, Quantity, Location) values
							(1, 2, 57, 'AB500'), 
                            (3, 7, 13, 'LI600'), 
                            (4, 5, 17, 'MA100'), 
                            (6, 1, 3, 'VE002'), 
                            (6, 5, 43, 'MA135'), 
                            (8, 3, 98, 'BR890');
                            
insert into productseller(idPSeller, idPProduct, Quantity) values
						(1, 6, 50),
                        (1, 2, 36),
                        (3, 1, 55),
                        (1, 4, 15),
                        (3, 4, 26),
                        (1, 7, 5);
                        
insert into productsupplier(idPSupplier, idPProduct, RequestDate, DeliveryForecast) values
							(1, 2, '2022-10-10', '2022-10-15'),
                            (2, 5, '2021-09-12', '2021-09-14'),
                            (2, 6, '2021-11-01', '2021-11-10'),
                            (3, 8, '2020-08-16', '2020-08-20'),
                            (3, 1, '2022-09-21', '2022-09-23');

insert into productorder(idPOrder, idPProduct, Quantity, OStatus) values
						(1, 1, 1, default),
                        (2, 9, 1, 'Disponível'),
                        (3, 2, 1, 'Disponível'),
                        (4, 6, 1, 'Disponível'),
                        (5, 2, 4, 'Disponível'),
                        (6, 3, 3, 'Disponível'),
                        (7, 2, 2, 'Disponível'),
                        (8, 6, 3, 'Disponível'),
                        (9, 2, 2, 'Disponível');
                    

        