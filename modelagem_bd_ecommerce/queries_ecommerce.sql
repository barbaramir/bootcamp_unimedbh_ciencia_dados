USE ecommerce; 

-- quantos pedidos foram feitos no ano de 2022 até o momento?
SELECT COUNT(*) AS Number_of_Orders_2022 FROM orders WHERE orderdate > '2022-01-01';

-- quais pedidos foram feitos no primeiro semestre de 2022? 
SELECT idOrder AS Order_Number, OrderDate, DeliveryForecast FROM orders WHERE orderdate > '2022-01-01' AND orderdate < '2022-07-01';

-- quantos pedidos foram feitos por cada cliente?
SELECT CONCAT(c.Fname, ' ', c.Minit, ' ', c.Lname) AS Client_Name, COUNT(o.idOrder) AS Number_of_Orders FROM clients c 
			INNER JOIN orders o ON c.idClient = o.idOrderClient
            GROUP BY Client_Name;

-- qual cliente gastou mais na loja?
SELECT CONCAT(c.Fname, ' ', c.Minit, ' ', c.Lname) AS Client_Name, SUM(o.OrderValue) AS Total_Spend FROM clients c 
			INNER JOIN orders o ON c.idClient = o.idOrderClient
            GROUP BY Client_Name
            ORDER BY Total_Spend DESC;
            
-- quais clientes gastaram mais de R$1.500,00? 
SELECT CONCAT(c.Fname, ' ', c.Minit, ' ', c.Lname) AS Client_Name, SUM(o.OrderValue) AS Total_Spend FROM clients c 
			INNER JOIN orders o ON c.idClient = o.idOrderClient
            GROUP BY Client_Name
            HAVING Total_Spend > 1500
            ORDER BY Total_Spend DESC;

-- ranking de vendas dos produtos
SELECT p.idProduct, p.Pname, p.Category, SUM(po.Quantity) as Number_of_Orders FROM productorder po 
				INNER JOIN product p ON idPProduct = idProduct
                GROUP BY p.Pname
                ORDER BY Number_of_Orders DESC;
                
-- relação de produtos, fornecedores e estoques:
SELECT p.Pname, l.SocialName, l.CNPJ, ps.Quantity, pst.City, pst.State, ps.Location FROM product p LEFT OUTER JOIN productsupplier psu ON psu.idPProduct = p.idProduct
						INNER JOIN supplier s ON psu.idPSupplier = s.idSupplier
                        INNER JOIN legalperson l ON s.idSupplierPJ = l.idLegalPerson
                        INNER JOIN productstorage ps ON ps.idPProduct = p.idProduct
                        INNER JOIN pstorage pst ON ps.idProductStorage = pst.idPStorage;

-- relação de vendedores, produtos e avaliação:
SELECT p.Pname as Product_Name, p.Rating, l.SocialName as Seller_Name, s.Rating as Seller_Rating FROM product p INNER JOIN productseller ps ON ps.idPProduct = p.idProduct
						INNER JOIN seller s ON ps.idPSeller = s.idSeller
                        INNER JOIN legalperson l ON s.idSellerPJ = l.idLegalPerson
                        ORDER BY p.Pname, s.Rating DESC;
                        
