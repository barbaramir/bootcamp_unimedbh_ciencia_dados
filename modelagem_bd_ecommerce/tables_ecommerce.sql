-- criação do banco de dados para o cenário de E-commerce
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE clients(
		idClient int auto_increment primary key,
        Fname varchar(10),
        Minit varchar(3),
        Lname varchar(20),
        CPF char(11) not null,
        Birth_date date not null,
        Email varchar(45) not null,
        PhoneNumber varchar (11), 
        Adress varchar(100) not null,
        Num varchar(6) not null, 
        Complement varchar(15),
        ZIPcode char(8) not null,
        Neighborhood varchar(30),
        City varchar(30),
        State char(2),            
        constraint unique_cpf_client unique (CPF)
);

alter table clients auto_increment=1;

CREATE TABLE product(
		idProduct int auto_increment primary key,
        Pname varchar(100) not null,
        Category enum('Vestiário', 'Eletrônicos', 'Brinquedos', 'Papelaria', 'Alimentos', 'Casa e Banho', 'Livros', 'Móveis') not null,
        Classification_kids bool default false,
        Descr varchar(300),
        Size varchar(30),
        Val float not null,
        Rating float default 0  
);        

alter table product auto_increment=1;        
        
CREATE TABLE payment(
		idPayment int auto_increment primary key,
        PaymentType enum('Cartão de Crédito', 'Cartão de Débito', 'Boleto Bancário', 'Pix') not null,
        CardName varchar(80),
        CardNumber char(16),
		ExpirationDate date
);      

alter table payment auto_increment=1;        
                
CREATE TABLE orders(
		idOrder int auto_increment primary key,
        idOrderClient int,
        idOrderPayment int,
        OrderDate date not null,
        OrderStatus enum('Em andamento', 'Processando', 'Enviado', 'Entregue') default 'Processando',
        OrderDescription varchar(255),
        OrderValue float not null,
        PaymentCash bool default false,
        SendValue float default 0,
        DeliveryForecast date,
        TrackingCode char(10) not null,
        constraint fk_order_payment foreign key (idOrderPayment) references payment(idPayment),
        constraint unique_tracking_code unique (TrackingCode),
        constraint fk_order_client foreign key (idOrderClient) references clients(idClient)
);

alter table orders auto_increment=1;        

CREATE TABLE pstorage(
		idPStorage int auto_increment primary key,
        City varchar(45),
        State char(2), 
        Quantity int default 0        
);

alter table pstorage auto_increment=1;        

CREATE TABLE legalperson(
		idLegalPerson int auto_increment primary key,
        SocialName varchar(80) not null,
        AbstName varchar(80),
        CNPJ char(14) not null,
        PJType enum('Fornecedor', 'Vendedor') not null,
        PhoneNumber varchar(11) not null,
        Adress varchar(100) not null,
        Num varchar(6) not null, 
        Complement varchar(15),
        ZIPcode char(8) not null,
        Neighborhood varchar(30),
        City varchar(30),
        State char(2), 
        constraint unique_legalperson_socialname unique (SocialName),
        constraint unique_legalperson_cnpj unique (CNPJ)
);

alter table legalperson auto_increment=1;        

CREATE TABLE supplier(
		idSupplier int auto_increment primary key,
		idSupplierPJ int,
        StatusSupplier enum('Ativo', 'Inativo') default 'Ativo',
        constraint fk_supplier_pj foreign key (idSupplierPJ) references legalperson(idLegalPerson)
);

alter table supplier auto_increment=1;        
        
CREATE TABLE seller(
		idSeller int auto_increment primary key,
        idSellerPJ int,
		StatusSeller enum('Ativo', 'Inativo') default 'Ativo',
        Rating float default 0,
        SalesNumber int default 0,
        RegistrationDate date not null,
        constraint fk_seller_pj foreign key (idSellerPJ) references legalperson(idLegalPerson)       
);

alter table seller auto_increment=1;   
     
CREATE TABLE productstorage(
		idProductStorage int,
        idPProduct int, 
        Quantity int not null,
        Location varchar(255) not null,
        primary key (idProductStorage, idPProduct),
        constraint fk_product_storage foreign key (idProductStorage) references pstorage(idPStorage),
        constraint fk_prod_product_storage foreign key (idPProduct) references product(idProduct)       
);

CREATE TABLE productseller(
		idPSeller int,
        idPProduct int, 
        Quantity int not null,
        primary key (idPSeller, idPProduct),
        constraint fk_product_seller foreign key (idPSeller) references seller(idSeller),
        constraint fk_prod_product_seller foreign key (idPProduct) references product(idProduct)       
);

CREATE TABLE productsupplier(
		idPSupplier int,
        idPProduct int, 
        RequestDate date,
        DeliveryForecast date,
        primary key (idPSupplier, idPProduct),
        constraint fk_product_supplier foreign key (idPSupplier) references supplier(idSupplier),
        constraint fk_prod_product_supplier foreign key (idPProduct) references product(idProduct)       
);

CREATE TABLE productorder(
		idPOrder int,
        idPProduct int, 
        Quantity int not null,
        OStatus enum('Disponível', 'Sem Estoque') default 'Disponível',    
        primary key (idPOrder, idPProduct),
        constraint fk_product_order foreign key (idPOrder) references orders(idOrder),
        constraint fk_prod_product_order foreign key (idPProduct) references product(idProduct)       
);

