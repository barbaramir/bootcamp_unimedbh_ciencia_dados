USE oficina_mecanica; 

INSERT INTO Clients(Cname, Phone, Adress, Num, Neighborhood, City) VALUES
					('Maria do Carmo', '31985632596', 'Rua das Flores', '102', 'Florença', 'Betim'),
                    ('Ana B Dias', '31985697845', 'Rua Betume', '1098',  'Laranjeiras', 'Betim'),
                    ('Beatriz J Souza', '33963852140', 'Avenida Paulista', '3030', 'Centro', 'Belo Horizonte'),
                    ('Bernardete L Martini', '33985612', 'Avenida Copacabana', '18000', 'Centro', 'Belo Horizonte'),
                    ('Bernardo B Rodrigues', '37985412030', 'Rua B', '10', 'Laranjeiras', 'Betim');
                    
	INSERT INTO Vehicles(idVehicleClient, Model, Color, Plate, Vyear) VALUES
						(1, 'Palio Fire', 'Azul', 'AVC4569', '2010'),
                        (1, 'Uno', 'Vermelho', 'LOI7896', '2002'),
                        (2, 'Chevet', 'Prata', 'IOP7896', '1980'),
                        (2, 'Fusca', 'Laranja', 'QSW8456', '1975'),
                        (3, 'Siena', 'Preto', 'WSE7410', '2005'),
                        (4, 'Palio Fire', 'Preto', 'OIU7896', '2005'),
                        (5, 'Mobi', 'Branco', 'WER7896', '2020'),
                        (5, 'Brasília', 'Amarela', 'AQW8596', '1982');
                        
INSERT INTO Employee(Ename, Phone, Adress, Num, Neighborhood, City, Specialty, Salary_hour) VALUES
					('Paulo A Pedrosa', '33975869', 'Avenida Sardenha', '1050A', 'Laranjeiras', 'Betim', 'Especialista em carros antigos', '30.00'),
                    ('Lucas De Oliveira', '99985697412', 'Rua Margarida', '100', 'Laranjeiras', 'Betim', 'Auxiliar geral', '20.00'),
                    ('Gisela M Mariano', '985639632', 'Rua São Cristóvão', '135', 'Centro', 'Venda Nova', 'Auxiliar de mecânica I', '25.00'),
                    ('Lorena R Silva', '985635269', 'Rua das Rosas', '216', 'Centro', 'Belo Horizonte', 'Auxiliar de mecânica II', '30.00');
                    
INSERT INTO Service(Service_type, Service_description) VALUES
					('Conserto', 'Troca de Pneu'),
                    ('Conserto', 'Troca de Óleo'),
                    ('Conserto', 'Pintura Automotiva'),
                    ('Revisão', 'Revisão Pacote Econômico'),
					('Revisão', 'Revisão Pacote Completo');
                    
INSERT INTO ServiceOrder(idServiceVehicle, Start_date, Total_value, Order_Status, Completion_date) VALUES
						(1, '2021-02-06', 1500.00, 'Concluído', '2021-02-26'), 
                        (2, '2021-03-18', 1000.00, 'Concluído', '2021-03-30'), 
                        (3, '2021-04-01', 2000.00, 'Concluído', '2021-04-15'), 
                        (4, '2021-10-20', 500.00, 'Concluído', '2021-10-25'), 
                        (5, '2021-12-06', 5000.00, 'Concluído', '2021-12-15'), 
                        (6, '2022-02-15', 3000.00, 'Em execução', '2022-02-28'), 
                        (7, '2022-02-16', 2500.00, 'Em execução', '2022-02-25'), 
                        (8, '2022-02-17', 1500.00, 'Em execução', '2022-02-28'), 
                        (1, '2022-02-18', 4500.00, 'Não iniciado', '2022-02-28'), 
                        (3, '2022-02-18', 500.00, 'Não iniciado', '2022-02-28');
                        
INSERT INTO Material(Mname, Material_description, Material_value) VALUES
					('Tinta Amarela', 'Pintura Automotiva', 100.00),
                    ('Pneu Aro 14', 'Pneu Pirelli', 500.00),
                    ('Óleo', 'Óleo Automotiva', 50.00), 
                    ('Pastilha de Freio', 'Pastilha de freio', 250.00);

INSERT INTO OS_Service(idOSServiceOrder, idOSService, Service_Value, Service_status) VALUES
						(1, 4, 1500.00, 'Concluído'), 
                        (2, 1, 1000.00, 'Concluído'), 
                        (3, 3, 2000.00, 'Concluído'), 
                        (4, 2, 500.00, 'Concluído'), 
                        (5, 3, 1000.00, 'Concluído'), 
                        (5, 1, 2000.00, 'Concluído'), 
                        (5, 4, 1500.00, 'Concluído'), 
                        (6, 5, 2500.00, 'Em execução'), 
                        (6, 1, 500.00, 'Em execução'), 
                        (7, 5, 2500.00, 'Em execução'),
                        (8, 3, 1500.00, 'Em execução'),
                        (9, 5, 2500.00, 'Não iniciado'),
                        (9, 3, 1000.00, 'Não iniciado'),
                        (9, 1, 1000.00, 'Não iniciado'),
                        (10, 2, 500.00, default);
                        
INSERT INTO Service_Material(idSMService, idSMMaterial, Quantity) VALUES
							(1, 2, 1), 
                            (2, 3, 2), 
                            (3, 1, 10), 
                            (4, 2, 4),
                            (4, 4, 2), 
                            (5, 2, 4), 
                            (5, 1, 4), 
                            (5, 3, 1); 
                        
  INSERT INTO Service_Employee(idSEEmployee, idSEService, Worked_hours, Value_labor) VALUES        
								(3, 1, 2, 50.00),
                                (2, 2, 1, 20.00),
                                (1, 3, 20, 600.00),
                                (4, 4, 5, 150.00),
                                (4, 5, 10, 300.00);  