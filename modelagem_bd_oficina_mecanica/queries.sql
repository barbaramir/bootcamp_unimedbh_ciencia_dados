USE oficina_mecanica; 

-- Relação de veículos por cliente
SELECT Cname, Model, Color, Plate, Vyear FROM Vehicles INNER JOIN Clients ON idVehicleClient = idClient
										ORDER BY Cname ASC;

-- Número de revisões e consertos realizados na oficina e valor agregado
SELECT COUNT(s.Service_type) as Number_of_Orders, s.Service_type, SUM(os.Service_Value) as Total_Value FROM OS_Service os 
							LEFT OUTER JOIN Service s ON os.idOSService = s.idService
							GROUP BY s.Service_type;

-- Identificar qual cliente gastou mais na oficina
SELECT Cname, SUM(Total_value) as Total_spent FROM ServiceOrder INNER JOIN Vehicles ON idServiceVehicle = idVehicle
							INNER JOIN Clients ON idVehicleClient = idClient
                            GROUP BY Cname
                            ORDER BY Total_spent DESC;
                            
-- Veículo, ordem de serviço, serviços executados, profissional que executou e materiais utilizados
SELECT Start_date, Model, Plate, Service_type, Service_description, Ename, Mname, Quantity FROM ServiceOrder INNER JOIN Vehicles ON idServiceVehicle = idVehicle
							INNER JOIN OS_Service ON idOSServiceOrder = idServiceOrder
                            INNER JOIN Service ON idOSService = idService
                            INNER JOIN Service_Employee ON idSEService = idService
                            INNER JOIN Employee ON idSEEmployee = idEmployee
                            INNER JOIN Service_Material ON idSMService = idService
                            INNER JOIN Material ON idSMMaterial = idMaterial
                            ORDER BY Plate;
