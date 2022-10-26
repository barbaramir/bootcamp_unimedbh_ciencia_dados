CREATE DATABASE oficina_mecanica; 
USE oficina_mecanica; 

CREATE TABLE Clients(
					idClient int auto_increment primary key,
                    Cname varchar(255) not null,
                    Phone varchar(11) not null,
                    Adress varchar(255),
                    Num varchar(6),
                    Neighborhood varchar(100),
                    City varchar(100)
);

CREATE TABLE Vehicles(
					idVehicle int auto_increment primary key,
                    idVehicleClient int, 
                    Model varchar(100) not null,
                    Color varchar(20) not null,
                    Plate varchar(10) not null,
                    Vyear varchar(10),
                    constraint fk_vehicle_client foreign key (idVehicleClient) references Clients(idClient),
                    constraint unique_vehicle_plate unique (Plate)                  
);

CREATE TABLE Employee(
					idEmployee int auto_increment primary key,
                    Ename varchar(255) not null,
                    Phone varchar(11) not null,
                    Adress varchar(255) not null,
                    Num varchar(6) not null,
                    Neighborhood varchar(100) not null,
                    City varchar(100) not null, 
                    Specialty varchar(100) not null,
                    Salary_hour float not null
);

CREATE TABLE Service(
					idService int auto_increment primary key,
                    Service_type enum('Conserto', 'Revisão') not null,
                    Service_description varchar(255)
);

CREATE TABLE ServiceOrder(
						idServiceOrder int auto_increment primary key,
                        idServiceVehicle int,
                        Start_date date not null,
                        Total_value float,
                        Order_Status enum('Não iniciado', 'Em execução', 'Concluído') not null,
                        Completion_date date,
						constraint fk_service_vehicle foreign key (idServiceVehicle) references Vehicles(idVehicle)                      
); 

CREATE TABLE Material(
					idMaterial int auto_increment primary key,
					Mname varchar(100) not null,
                    Material_description varchar(255),
                    Material_value float not null
);

CREATE TABLE OS_Service(
						idOSServiceOrder int,
                        idOSService int,
                        Service_Value float not null,
                        Service_status enum('Não iniciado', 'Em execução', 'Concluído') default 'Não iniciado',
                        constraint fk_os_sorder foreign key (idOSServiceOrder) references ServiceOrder(idServiceOrder),
                        constraint fk_os_serv foreign key (idOSService) references Service(idService)   
);
 
CREATE TABLE Service_Material(
							idSMService int,
                            idSMMaterial int,
                            Quantity int not null,
                            constraint fk_sm_service foreign key (idSMService) references Service(idService),
							constraint fk_sm_material foreign key (idSMMaterial) references Material(idMaterial)
); 

CREATE TABLE Service_Employee(
							idSEEmployee int,
                            idSEService int,
                            Worked_hours int not null,
                            Value_labor float,
                            constraint fk_se_employee foreign key (idSEEmployee) references Employee(idEmployee),
							constraint fk_se_service foreign key (idSEService) references Service(idService)
);