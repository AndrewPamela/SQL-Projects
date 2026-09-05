create database pampam_Supermarket;
use Pampam_Supermarket;
Create Table Customers 
              (Customer_ID INT Auto_increment Primary key,
              First_name Varchar (50) not null,
              Last_name Varchar (50) not null,
              City Varchar (50) not null,
              Country Varchar (50) not null);
              
create table Suppliers(
              Supplier_ID INT Auto_increment Primary key,
			  Company_name Varchar (100) not null,
              Contact_name Varchar (100) not null,
              City Varchar (50) not null,
              Country Varchar (50) not null,
              Phone Varchar (20) ,
              Fax Varchar (20));
Create Table Products(
              Product_ID INT Auto_Increment Primary Key,
              Product_Name Varchar (100) not null,
              Unit_Price Decimal (10,2),
              Supplier_ID INT, Foreign Key (Supplier_ID) references Suppliers(Supplier_ID));
CREATE TABLE Orders(
	    Order_ID INT AUTO_INCREMENT PRIMARY KEY,
        Order_Name VARCHAR(50) NOT NULL,
        Order_Date DATE, 
        Customer_ID INT, FOREIGN KEY (Customer_ID) REFERENCES CUSTOMERS(Customer_ID),
        TOTAL_AMOUNT DECIMAL (10,2),
        ORDER_NUMBER VARCHAR(20) NOT NULL
);
CREATE TABLE ORDER_ITEMS(
        ORDER_ITEMID INT AUTO_INCREMENT PRIMARY KEY,
        Order_ID INT, FOREIGN KEY (Order_ID) REFERENCES ORDERS(Order_ID),
        Product_ID INT, FOREIGN KEY (Product_ID) REFERENCES PRODUCTS(Product_ID),
        UNITPRICE DECIMAL(10,2),
        QUANTITY INT
);
ALTER TABLE CUSTOMERS ADD COLUMN PHONE VARCHAR(20);
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(1,'Maria','Anders','Berlin','Germany','030-0074321');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(2,'Ana','Trujillo','México D.F.','Mexico','(5) 555-4729');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(3,'Antonio','Moreno','México D.F.','Mexico','(5) 555-3932');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(4,'Thomas','Hardy','London','UK','(171) 555-7788');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(5,'Christina','Berglund','Luleå','Sweden','0921-12 34 65');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(6,'Hanna','Moos','Mannheim','Germany','0621-08460');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(7,'Frédérique','Citeaux','Strasbourg','France','88.60.15.31');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(8,'Martín','Sommer','Madrid','Spain','(91) 555 22 82');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(9,'Laurence','Lebihan','Marseille','France','91.24.45.40');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(10,'Elizabeth','Lincoln','Tsawassen','Canada','(604) 555-4729');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(11,'Victoria','Ashworth','London','UK','(171) 555-1212');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(12,'Patricio','Simpson','Buenos Aires','Argentina','(1) 135-5555');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(13,'Francisco','Chang','México D.F.','Mexico','(5) 555-3392');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(14,'Yang','Wang','Bern','Switzerland','0452-076545');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(15,'Pedro','Afonso','Sao Paulo','Brazil','(11) 555-7647');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(16,'Elizabeth','Brown','London','UK','(171) 555-2282');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(17,'Sven','Ottlieb','Aachen','Germany','0241-039123');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(18,'Janine','Labrune','Nantes','France','40.67.88.88');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(19,'Ann','Devon','London','UK','(171) 555-0297');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(20,'Roland','Mendel','Graz','Austria','7675-3425');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(21,'Aria','Cruz','Sao Paulo','Brazil','(11) 555-9857');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(22,'Diego','Roel','Madrid','Spain','(91) 555 94 44');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(23,'Martine','Rancé','Lille','France','20.16.10.16');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(24,'Maria','Larsson','Bräcke','Sweden','0695-34 67 21');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(25,'Peter','Franken','München','Germany','089-0877310');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(26,'Carine','Schmitt','Nantes','France','40.32.21.21');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(27,'Paolo','Accorti','Torino','Italy','011-4988260');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(28,'Lino','Rodriguez','Lisboa','Portugal','(1) 354-2534');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(29,'Eduardo','Saavedra','Barcelona','Spain','(93) 203 4560');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(30,'José','Pedro Freyre','Sevilla','Spain','(95) 555 82 82');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(31,'André','Fonseca','Campinas','Brazil','(11) 555-9482');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(32,'Howard','Snyder','Eugene','USA','(503) 555-7555');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(33,'Manuel','Pereira','Caracas','Venezuela','(2) 283-2951');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(34,'Mario','Pontes','Rio de Janeiro','Brazil','(21) 555-0091');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(35,'Carlos','Hernández','San Cristóbal','Venezuela','(5) 555-1340');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(36,'Yoshi','Latimer','Elgin','USA','(503) 555-6874');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(37,'Patricia','McKenna','Cork','Ireland','2967 542');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(38,'Helen','Bennett','Cowes','UK','(198) 555-8888');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(39,'Philip','Cramer','Brandenburg','Germany','0555-09876');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(40,'Daniel','Tonini','Versailles','France','30.59.84.10');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(41,'Annette','Roulet','Toulouse','France','61.77.61.10');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(42,'Yoshi','Tannamuri','Vancouver','Canada','(604) 555-3392');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(43,'John','Steel','Walla Walla','USA','(509) 555-7969');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(44,'Renate','Messner','Frankfurt a.M.','Germany','069-0245984');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(45,'Jaime','Yorres','San Francisco','USA','(415) 555-5938');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(46,'Carlos','González','Barquisimeto','Venezuela','(9) 331-6954');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(47,'Felipe','Izquierdo','I. de Margarita','Venezuela','(8) 34-56-12');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(48,'Fran','Wilson','Portland','USA','(503) 555-9573');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(49,'Giovanni','Rovelli','Bergamo','Italy','035-640230');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(50,'Catherine','Dewey','Bruxelles','Belgium','(02) 201 24 67');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(51,'Jean','Fresnière','Montréal','Canada','(514) 555-8054');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(52,'Alexander','Feuer','Leipzig','Germany','0342-023176');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(53,'Simon','Crowther','London','UK','(171) 555-7733');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(54,'Yvonne','Moncada','Buenos Aires','Argentina','(1) 135-5333');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(55,'Rene','Phillips','Anchorage','USA','(907) 555-7584');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(56,'Henriette','Pfalzheim','Köln','Germany','0221-0644327');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(57,'Marie','Bertrand','Paris','France','(1) 42.34.22.66');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(58,'Guillermo','Fernández','México D.F.','Mexico','(5) 552-3745');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(59,'Georg','Pipps','Salzburg','Austria','6562-9722');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(60,'Isabel','de Castro','Lisboa','Portugal','(1) 356-5634');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(61,'Bernardo','Batista','Rio de Janeiro','Brazil','(21) 555-4252');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(62,'Lúcia','Carvalho','Sao Paulo','Brazil','(11) 555-1189');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(63,'Horst','Kloss','Cunewalde','Germany','0372-035188');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(64,'Sergio','Gutiérrez','Buenos Aires','Argentina','(1) 123-5555');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(65,'Paula','Wilson','Albuquerque','USA','(505) 555-5939');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(66,'Maurizio','Moroni','Reggio Emilia','Italy','0522-556721');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(67,'Janete','Limeira','Rio de Janeiro','Brazil','(21) 555-3412');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(68,'Michael','Holz','Genève','Switzerland','0897-034214');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(69,'Alejandra','Camino','Madrid','Spain','(91) 745 6200');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(70,'Jonas','Bergulfsen','Stavern','Norway','07-98 92 35');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(71,'Jose','Pavarotti','Boise','USA','(208) 555-8097');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(72,'Hari','Kumar','London','UK','(171) 555-1717');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(73,'Jytte','Petersen','Kobenhavn','Denmark','31 12 34 56');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(74,'Dominique','Perrier','Paris','France','(1) 47.55.60.10');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(75,'Art','Braunschweiger','Lander','USA','(307) 555-4680');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(76,'Pascale','Cartrain','Charleroi','Belgium','(071) 23 67 22 20');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(77,'Liz','Nixon','Portland','USA','(503) 555-3612');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(78,'Liu','Wong','Butte','USA','(406) 555-5834');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(79,'Karin','Josephs','Münster','Germany','0251-031259');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(80,'Miguel','Angel Paolino','México D.F.','Mexico','(5) 555-2933');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(81,'Anabela','Domingues','Sao Paulo','Brazil','(11) 555-2167');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(82,'Helvetius','Nagy','Kirkland','USA','(206) 555-8257');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(83,'Palle','Ibsen','Århus','Denmark','86 21 32 43');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(84,'Mary','Saveley','Lyon','France','78.32.54.86');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(85,'Paul','Henriot','Reims','France','26.47.15.10');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(86,'Rita','Müller','Stuttgart','Germany','0711-020361');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(87,'Pirkko','Koskitalo','Oulu','Finland','981-443655');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(88,'Paula','Parente','Resende','Brazil','(14) 555-8122');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(89,'Karl','Jablonski','Seattle','USA','(206) 555-4112');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(90,'Matti','Karttunen','Helsinki','Finland','90-224 8858');
INSERT INTO Customers (Customer_ID,First_name,Last_name, City,Country,Phone)VALUES(91,'Zbyszek','Piestrzeniewicz','Warszawa','Poland','(26) 642-7012');

INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(1,'Exotic Liquids','Charlotte Cooper','London','UK','(171) 555-2222','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(2,'New Orleans Cajun Delights','Shelley Burke','New Orleans','USA','(100) 555-4822','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(3,'Grandma Kelly''s Homestead','Regina Murphy','Ann Arbor','USA','(313) 555-5735','(313) 555-3349');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(4,'Tokyo Traders','Yoshi Nagase','Tokyo','Japan','(03) 3555-5011','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(5,'Cooperativa de Quesos ''Las Cabras''','Antonio del Valle Saavedra','Oviedo','Spain','(98) 598 76 54','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(6,'Mayumi''s','Mayumi Ohno','Osaka','Japan','(06) 431-7877','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(7,'Pavlova, Ltd.','Ian Devling','Melbourne','Australia','(03) 444-2343','(03) 444-6588');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(8,'Specialty Biscuits, Ltd.','Peter Wilson','Manchester','UK','(161) 555-4448','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(9,'PB Knäckebröd AB','Lars Peterson','Göteborg','Sweden','031-987 65 43','031-987 65 91');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(10,'Refrescos Americanas LTDA','Carlos Diaz','Sao Paulo','Brazil','(11) 555 4640','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Berlin','Germany','(010) 9984510','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(12,'Plutzer Lebensmittelgroßmärkte AG','Martin Bein','Frankfurt','Germany','(069) 992755','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Cuxhaven','Germany','(04721) 8713','(04721) 8714');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(14,'Formaggi Fortini s.r.l.','Elio Rossi','Ravenna','Italy','(0544) 60323','(0544) 60603');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(15,'Norske Meierier','Beate Vileid','Sandvika','Norway','(0)2-953010','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(16,'Bigfoot Breweries','Cheryl Saylor','Bend','USA','(503) 555-9931','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(17,'Svensk Sjöföda AB','Michael Björn','Stockholm','Sweden','08-123 45 67','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(18,'Aux joyeux ecclésiastiques','Guylène Nodier','Paris','France','(1) 03.83.00.68','(1) 03.83.00.62');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(19,'New England Seafood Cannery','Robb Merchant','Boston','USA','(617) 555-3267','(617) 555-3389');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(20,'Leka Trading','Chandra Leka','Singapore','Singapore','555-8787','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(21,'Lyngbysild','Niels Petersen','Lyngby','Denmark','43844108','43844115');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(22,'Zaanse Snoepfabriek','Dirk Luchte','Zaandam','Netherlands','(12345) 1212','(12345) 1210');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(23,'Karkki Oy','Anne Heikkonen','Lappeenranta','Finland','(953) 10956','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(24,'G''day, Mate','Wendy Mackenzie','Sydney','Australia','(02) 555-5914','(02) 555-4873');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(25,'Ma Maison','Jean-Guy Lauzon','Montréal','Canada','(514) 555-9022','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Salerno','Italy','(089) 6547665','(089) 6547667');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(27,'Escargots Nouveaux','Marie Delamare','Montceau','France','85.57.00.07','NULL');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(28,'Gai pâturage','Eliane Noz','Annecy','France','38.76.98.06','38.76.98.58');
INSERT INTO Suppliers (Supplier_ID, Company_name, Contact_name, City,Country,Phone,Fax)VALUES(29,'Forêts d''érables','Chantal Goulet','Ste-Hyacinthe','Canada','(514) 555-2955','(514) 555-2921');

ALTER TABLE products ADD COLUMN Package VARCHAR(30), ADD COLUMN IsDiscontinued VARCHAR(20);
alter table orders drop column order_name;

INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(1,'Chai',1,18.00,'10 boxes x 20 bags',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(2,'Chang',1,19.00,'24 - 12 oz bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(3,'Aniseed Syrup',1,10.00,'12 - 550 ml bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(4,'Chef Anton''s Cajun Seasoning',2,22.00,'48 - 6 oz jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(5,'Chef Anton''s Gumbo Mix',2,21.35,'36 boxes',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(6,'Grandma''s Boysenberry Spread',3,25.00,'12 - 8 oz jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(7,'Uncle Bob''s Organic Dried Pears',3,30.00,'12 - 1 lb pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(8,'Northwoods Cranberry Sauce',3,40.00,'12 - 12 oz jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(9,'Mishi Kobe Niku',4,97.00,'18 - 500 g pkgs.',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(10,'Ikura',4,31.00,'12 - 200 ml jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(11,'Queso Cabrales',5,21.00,'1 kg pkg.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(12,'Queso Manchego La Pastora',5,38.00,'10 - 500 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(13,'Konbu',6,6.00,'2 kg box',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(14,'Tofu',6,23.25,'40 - 100 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(15,'Genen Shouyu',6,15.50,'24 - 250 ml bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(16,'Pavlova',7,17.45,'32 - 500 g boxes',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(17,'Alice Mutton',7,39.00,'20 - 1 kg tins',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(18,'Carnarvon Tigers',7,62.50,'16 kg pkg.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(19,'Teatime Chocolate Biscuits',8,9.20,'10 boxes x 12 pieces',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(20,'Sir Rodney''s Marmalade',8,81.00,'30 gift boxes',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(21,'Sir Rodney''s Scones',8,10.00,'24 pkgs. x 4 pieces',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(22,'Gustaf''s Knäckebröd',9,21.00,'24 - 500 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(23,'Tunnbröd',9,9.00,'12 - 250 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(24,'Guaraná Fantástica',10,4.50,'12 - 355 ml cans',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(25,'NuNuCa Nuß-Nougat-Creme',11,14.00,'20 - 450 g glasses',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(26,'Gumbär Gummibärchen',11,31.23,'100 - 250 g bags',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(27,'Schoggi Schokolade',11,43.90,'100 - 100 g pieces',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(28,'Rössle Sauerkraut',12,45.60,'25 - 825 g cans',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(29,'Thüringer Rostbratwurst',12,123.79,'50 bags x 30 sausgs.',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(30,'Nord-Ost Matjeshering',13,25.89,'10 - 200 g glasses',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(31,'Gorgonzola Telino',14,12.50,'12 - 100 g pkgs',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(32,'Mascarpone Fabioli',14,32.00,'24 - 200 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(33,'Geitost',15,2.50,'500 g',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(34,'Sasquatch Ale',16,14.00,'24 - 12 oz bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(35,'Steeleye Stout',16,18.00,'24 - 12 oz bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(36,'Inlagd Sill',17,19.00,'24 - 250 g  jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(37,'Gravad lax',17,26.00,'12 - 500 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(38,'Côte de Blaye',18,263.50,'12 - 75 cl bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(39,'Chartreuse verte',18,18.00,'750 cc per bottle',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(40,'Boston Crab Meat',19,18.40,'24 - 4 oz tins',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(41,'Jack''s New England Clam Chowder',19,9.65,'12 - 12 oz cans',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(42,'Singaporean Hokkien Fried Mee',20,14.00,'32 - 1 kg pkgs.',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(43,'Ipoh Coffee',20,46.00,'16 - 500 g tins',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(44,'Gula Malacca',20,19.45,'20 - 2 kg bags',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(45,'Rogede sild',21,9.50,'1k pkg.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(46,'Spegesild',21,12.00,'4 - 450 g glasses',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(47,'Zaanse koeken',22,9.50,'10 - 4 oz boxes',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(48,'Chocolade',22,12.75,'10 pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(49,'Maxilaku',23,20.00,'24 - 50 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(50,'Valkoinen suklaa',23,16.25,'12 - 100 g bars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(51,'Manjimup Dried Apples',24,53.00,'50 - 300 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(52,'Filo Mix',24,7.00,'16 - 2 kg boxes',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(53,'Perth Pasties',24,32.80,'48 pieces',1);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(54,'Tourtière',25,7.45,'16 pies',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(55,'Pâté chinois',25,24.00,'24 boxes x 2 pies',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(56,'Gnocchi di nonna Alice',26,38.00,'24 - 250 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(57,'Ravioli Angelo',26,19.50,'24 - 250 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(58,'Escargots de Bourgogne',27,13.25,'24 pieces',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(59,'Raclette Courdavault',28,55.00,'5 kg pkg.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(60,'Camembert Pierrot',28,34.00,'15 - 300 g rounds',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(61,'Sirop d''érable',29,28.50,'24 - 500 ml bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(62,'Tarte au sucre',29,49.30,'48 pies',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(63,'Vegie-spread',7,43.90,'15 - 625 g jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(64,'Wimmers gute Semmelknödel',12,33.25,'20 bags x 4 pieces',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(65,'Louisiana Fiery Hot Pepper Sauce',2,21.05,'32 - 8 oz bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(66,'Louisiana Hot Spiced Okra',2,17.00,'24 - 8 oz jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(67,'Laughing Lumberjack Lager',16,14.00,'24 - 12 oz bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(68,'Scottish Longbreads',8,12.50,'10 boxes x 8 pieces',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(69,'Gudbrandsdalsost',15,36.00,'10 kg pkg.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(70,'Outback Lager',7,15.00,'24 - 355 ml bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(71,'Flotemysost',15,21.50,'10 - 500 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(72,'Mozzarella di Giovanni',14,34.80,'24 - 200 g pkgs.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(73,'Röd Kaviar',17,15.00,'24 - 150 g jars',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(74,'Longlife Tofu',4,10.00,'5 kg pkg.',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(75,'Rhönbräu Klosterbier',12,7.75,'24 - 0.5 l bottles',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(76,'Lakkalikööri',23,18.00,'500 ml',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(77,'Original Frankfurter grüne Soße',12,13.00,'12 boxes',0);
INSERT INTO Products (Product_ID,Product_Name,Supplier_ID,Unit_Price,Package,IsDiscontinued)VALUES(78,'Stroopwafels',22,9.75,'24 pieces',0);

alter table orders modify column order_date timestamp;

INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
 values
(1,'2012-07-04 00:00:00',85,440.00,'542378'),
(2,'2012-07-05 00:00:00',79,1863.40,'542379'),
(3,'2012-07-08 00:00:00',34,1813.00,'542380'),
(4,'2012-07-08 00:00:00',84,670.80,'542381'),
(5,'2012-07-09 00:00:00',76,3730.00,'542382'),
(6,'2012-07-10 00:00:00',34,1444.80,'542383'),
(7,'2012-07-11 00:00:00',14,625.20,'542384'),
(8,'2012-07-12 00:00:00',68,2490.50,'542385'),
(9,'2012-07-15 00:00:00',88,517.80,'542386'),
(10,'2012-07-16 00:00:00',35,1119.90,'542387'),
(11,'2012-07-17 00:00:00',20,2018.60,'542388'),
(12,'2012-07-18 00:00:00',13,100.80,'542389'),
(13,'2012-07-19 00:00:00',56,1746.20,'542390'),
(14,'2012-07-19 00:00:00',61,448.00,'542391'),
(15,'2012-07-22 00:00:00',65,624.80,'542392'),
(16,'2012-07-23 00:00:00',20,2464.80,'542393'),
(17,'2012-07-24 00:00:00',24,724.50,'542394'),
(18,'2012-07-25 00:00:00',7,1176.00,'542395'),
(19,'2012-07-26 00:00:00',87,364.80,'542396'),
(20,'2012-07-29 00:00:00',25,4031.00,'542397'),
(21,'2012-07-30 00:00:00',33,1101.20,'542398'),
(22,'2012-07-31 00:00:00',89,676.00,'542399'),
(23,'2012-08-01 00:00:00',87,1376.00,'542400'),
(24,'2012-08-01 00:00:00',75,48.00,'542401'),
(25,'2012-08-02 00:00:00',65,1456.00,'542402'),
(26,'2012-08-05 00:00:00',63,2142.40,'542403'),
(27,'2012-08-06 00:00:00',85,538.60,'542404'),
(28,'2012-08-07 00:00:00',49,307.20,'542405'),
(29,'2012-08-08 00:00:00',80,420.00,'542406'),
(30,'2012-08-09 00:00:00',52,1200.80,'542407'),
(31,'2012-08-12 00:00:00',5,1488.80,'542408'),
(32,'2012-08-13 00:00:00',44,468.00,'542409'),
(33,'2012-08-14 00:00:00',5,613.20,'542410'),
(34,'2012-08-14 00:00:00',69,86.50,'542411'),
(35,'2012-08-15 00:00:00',69,155.40,'542412'),
(36,'2012-08-16 00:00:00',46,1414.80,'542413'),
(37,'2012-08-19 00:00:00',44,1452.00,'542414'),
(38,'2012-08-20 00:00:00',63,2179.20,'542415'),
(39,'2012-08-21 00:00:00',63,3016.00,'542416'),
(40,'2012-08-22 00:00:00',67,924.00,'542417'),
(41,'2012-08-23 00:00:00',66,89.00,'542418'),
(42,'2012-08-26 00:00:00',11,479.40,'542419'),
(43,'2012-08-27 00:00:00',15,2169.00,'542420'),
(44,'2012-08-27 00:00:00',61,552.80,'542421'),
(45,'2012-08-28 00:00:00',81,1296.00,'542422'),
(46,'2012-08-29 00:00:00',80,848.70,'542423'),
(47,'2012-08-30 00:00:00',65,1887.60,'542424'),
(48,'2012-09-02 00:00:00',85,121.60,'542425'),
(49,'2012-09-03 00:00:00',46,1050.60,'542426'),
(50,'2012-09-04 00:00:00',7,1420.00,'542427'),
(51,'2012-09-05 00:00:00',37,3127.00,'542428'),
(52,'2012-09-06 00:00:00',67,349.50,'542429'),
(53,'2012-09-09 00:00:00',49,608.00,'542430'),
(54,'2012-09-09 00:00:00',86,755.00,'542431'),
(55,'2012-09-10 00:00:00',76,2708.80,'542432'),
(56,'2012-09-11 00:00:00',30,1242.00,'542433'),
(57,'2012-09-12 00:00:00',80,954.40,'542434'),
(58,'2012-09-13 00:00:00',55,4157.00,'542435'),
(59,'2012-09-16 00:00:00',69,498.50,'542436'),
(60,'2012-09-17 00:00:00',48,424.00,'542437'),
(61,'2012-09-18 00:00:00',2,88.80,'542438'),
(62,'2012-09-19 00:00:00',37,1762.00,'542439'),
(63,'2012-09-20 00:00:00',77,336.00,'542440'),
(64,'2012-09-20 00:00:00',18,268.80,'542441'),
(65,'2012-09-23 00:00:00',86,1614.80,'542442'),
(66,'2012-09-24 00:00:00',63,182.40,'542443'),
(67,'2012-09-25 00:00:00',65,2327.00,'542444'),
(68,'2012-09-26 00:00:00',38,516.80,'542445'),
(69,'2012-09-27 00:00:00',65,2835.00,'542446'),
(70,'2012-09-30 00:00:00',48,288.00,'542447');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(71,'2012-10-01 00:00:00',38,240.40,'542448'),
(72,'2012-10-02 00:00:00',80,1191.20,'542449'),
(73,'2012-10-03 00:00:00',87,516.00,'542450'),
(74,'2012-10-03 00:00:00',38,144.00,'542451'),
(75,'2012-10-04 00:00:00',58,112.00,'542452'),
(76,'2012-10-07 00:00:00',39,164.40,'542453'),
(77,'2012-10-08 00:00:00',71,6155.90,'542454'),
(78,'2012-10-09 00:00:00',39,1497.00,'542455'),
(79,'2012-10-10 00:00:00',8,982.00,'542456'),
(80,'2012-10-11 00:00:00',24,2262.50,'542457'),
(81,'2012-10-14 00:00:00',28,1168.00,'542458'),
(82,'2012-10-15 00:00:00',75,4819.40,'542459'),
(83,'2012-10-16 00:00:00',46,1940.00,'542460'),
(84,'2012-10-16 00:00:00',9,88.50,'542461'),
(85,'2012-10-17 00:00:00',51,2233.60,'542462'),
(86,'2012-10-18 00:00:00',87,954.00,'542463'),
(87,'2012-10-21 00:00:00',84,144.80,'542464'),
(88,'2012-10-22 00:00:00',37,2545.20,'542465'),
(89,'2012-10-23 00:00:00',60,316.80,'542466'),
(90,'2012-10-24 00:00:00',25,2467.00,'542467'),
(91,'2012-10-25 00:00:00',55,934.50,'542468'),
(92,'2012-10-28 00:00:00',51,3463.20,'542469'),
(93,'2012-10-29 00:00:00',9,2564.40,'542470'),
(94,'2012-10-29 00:00:00',73,412.00,'542471'),
(95,'2012-10-30 00:00:00',25,2300.80,'542472'),
(96,'2012-10-31 00:00:00',44,1586.00,'542473'),
(97,'2012-11-01 00:00:00',89,2856.00,'542474'),
(98,'2012-11-04 00:00:00',63,2924.80,'542475'),
(99,'2012-11-05 00:00:00',65,1731.20,'542476'),
(100,'2012-11-06 00:00:00',21,928.00,'542477'),
(101,'2012-11-07 00:00:00',86,396.00,'542478'),
(102,'2012-11-08 00:00:00',75,141.60,'542479'),
(103,'2012-11-11 00:00:00',41,713.40,'542480'),
(104,'2012-11-11 00:00:00',20,5677.60,'542481'),
(105,'2012-11-12 00:00:00',28,154.00,'542482'),
(106,'2012-11-13 00:00:00',59,10741.60,'542483'),
(107,'2012-11-14 00:00:00',58,568.80,'542484'),
(108,'2012-11-15 00:00:00',4,480.00,'542485'),
(109,'2012-11-18 00:00:00',86,1106.40,'542486'),
(110,'2012-11-19 00:00:00',46,1360.00,'542487'),
(111,'2012-11-20 00:00:00',41,452.00,'542488'),
(112,'2012-11-21 00:00:00',72,3654.40,'542489'),
(113,'2012-11-22 00:00:00',7,7390.20,'542490'),
(114,'2012-11-22 00:00:00',63,2273.60,'542491'),
(115,'2012-11-25 00:00:00',9,1549.60,'542492'),
(116,'2012-11-26 00:00:00',17,447.20,'542493'),
(117,'2012-11-26 00:00:00',19,950.00,'542494'),
(118,'2012-11-27 00:00:00',3,403.20,'542495'),
(119,'2012-11-28 00:00:00',29,136.00,'542496'),
(120,'2012-11-28 00:00:00',83,834.20,'542497'),
(121,'2012-11-29 00:00:00',20,1834.20,'542498'),
(122,'2012-12-02 00:00:00',75,2527.20,'542499'),
(123,'2012-12-03 00:00:00',14,1174.00,'542500'),
(124,'2012-12-03 00:00:00',41,91.20,'542501'),
(125,'2012-12-04 00:00:00',62,12281.20,'542502'),
(126,'2012-12-05 00:00:00',37,1708.00,'542503'),
(127,'2012-12-05 00:00:00',91,459.00,'542504'),
(128,'2012-12-06 00:00:00',36,338.00,'542505'),
(129,'2012-12-09 00:00:00',51,420.00,'542506'),
(130,'2012-12-09 00:00:00',72,1016.00,'542507'),
(131,'2012-12-10 00:00:00',24,103.20,'542508'),
(132,'2012-12-11 00:00:00',61,959.20,'542509'),
(133,'2012-12-12 00:00:00',37,1419.80,'542510'),
(134,'2012-12-12 00:00:00',46,112.00,'542511'),
(135,'2012-12-13 00:00:00',20,2900.00,'542512'),
(136,'2012-12-16 00:00:00',4,899.00,'542513'),
(137,'2012-12-16 00:00:00',5,2222.40,'542514'),
(138,'2012-12-17 00:00:00',75,864.00,'542515'),
(139,'2012-12-18 00:00:00',21,166.00,'542516'),
(140,'2012-12-18 00:00:00',70,1058.40,'542517');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(141,'2012-12-19 00:00:00',72,1274.00,'542518'),
(142,'2012-12-20 00:00:00',10,1832.80,'542519'),
(143,'2012-12-23 00:00:00',20,2275.20,'542520'),
(144,'2012-12-23 00:00:00',17,86.40,'542521'),
(145,'2012-12-24 00:00:00',59,1440.00,'542522'),
(146,'2012-12-25 00:00:00',71,3302.60,'542523'),
(147,'2012-12-25 00:00:00',36,442.00,'542524'),
(148,'2012-12-26 00:00:00',35,2333.20,'542525'),
(149,'2012-12-27 00:00:00',25,1903.80,'542526'),
(150,'2012-12-27 00:00:00',60,843.20,'542527'),
(151,'2012-12-30 00:00:00',71,2736.00,'542528'),
(152,'2012-12-31 00:00:00',83,1765.60,'542529'),
(153,'2013-01-01 00:00:00',19,3063.00,'542530'),
(154,'2013-01-01 00:00:00',65,3868.60,'542531'),
(155,'2013-01-02 00:00:00',20,2713.50,'542532'),
(156,'2013-01-03 00:00:00',20,1005.90,'542533'),
(157,'2013-01-03 00:00:00',49,1675.00,'542534'),
(158,'2013-01-06 00:00:00',47,400.00,'542535'),
(159,'2013-01-07 00:00:00',62,2018.20,'542536'),
(160,'2013-01-07 00:00:00',56,1194.00,'542537'),
(161,'2013-01-08 00:00:00',23,1622.40,'542538'),
(162,'2013-01-09 00:00:00',54,319.20,'542539'),
(163,'2013-01-10 00:00:00',10,802.00,'542540'),
(164,'2013-01-10 00:00:00',10,1208.50,'542541'),
(165,'2013-01-13 00:00:00',87,372.00,'542542'),
(166,'2013-01-14 00:00:00',41,2123.20,'542543'),
(167,'2013-01-14 00:00:00',21,231.40,'542544'),
(168,'2013-01-15 00:00:00',36,102.40,'542545'),
(169,'2013-01-16 00:00:00',87,720.00,'542546'),
(170,'2013-01-16 00:00:00',73,11283.20,'542547'),
(171,'2013-01-17 00:00:00',63,1814.80,'542548'),
(172,'2013-01-20 00:00:00',68,2208.00,'542549'),
(173,'2013-01-21 00:00:00',88,1897.60,'542550'),
(174,'2013-01-21 00:00:00',61,1273.20,'542551'),
(175,'2013-01-22 00:00:00',27,49.80,'542552'),
(176,'2013-01-23 00:00:00',31,1020.00,'542553'),
(177,'2013-01-23 00:00:00',51,11493.20,'542554'),
(178,'2013-01-24 00:00:00',41,480.00,'542555'),
(179,'2013-01-27 00:00:00',29,338.20,'542556'),
(180,'2013-01-27 00:00:00',59,651.00,'542557'),
(181,'2013-01-28 00:00:00',66,192.00,'542558'),
(182,'2013-01-29 00:00:00',37,1748.50,'542559'),
(183,'2013-01-30 00:00:00',20,5796.00,'542560'),
(184,'2013-01-30 00:00:00',10,2523.00,'542561'),
(185,'2013-01-31 00:00:00',75,485.00,'542562'),
(186,'2013-02-03 00:00:00',60,851.20,'542563'),
(187,'2013-02-03 00:00:00',24,360.00,'542564'),
(188,'2013-02-04 00:00:00',16,631.60,'542565'),
(189,'2013-02-05 00:00:00',7,2210.80,'542566'),
(190,'2013-02-05 00:00:00',87,393.00,'542567'),
(191,'2013-02-06 00:00:00',79,567.50,'542568'),
(192,'2013-02-07 00:00:00',51,1078.00,'542569'),
(193,'2013-02-10 00:00:00',71,5793.10,'542570'),
(194,'2013-02-10 00:00:00',55,1755.00,'542571'),
(195,'2013-02-11 00:00:00',20,1792.00,'542572'),
(196,'2013-02-12 00:00:00',66,537.60,'542573'),
(197,'2013-02-12 00:00:00',5,1031.70,'542574'),
(198,'2013-02-13 00:00:00',5,174.90,'542575'),
(199,'2013-02-14 00:00:00',79,273.60,'542576'),
(200,'2013-02-14 00:00:00',67,914.40,'542577'),
(201,'2013-02-17 00:00:00',64,443.40,'542578'),
(202,'2013-02-18 00:00:00',7,1838.20,'542579'),
(203,'2013-02-19 00:00:00',84,531.40,'542580'),
(204,'2013-02-19 00:00:00',63,4277.40,'542581'),
(205,'2013-02-20 00:00:00',71,2096.00,'542582'),
(206,'2013-02-21 00:00:00',4,453.00,'542583'),
(207,'2013-02-21 00:00:00',41,414.00,'542584'),
(208,'2013-02-24 00:00:00',87,2684.00,'542585'),
(209,'2013-02-25 00:00:00',39,656.00,'542586'),
(210,'2013-02-25 00:00:00',39,1584.00,'542587');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(211,'2013-02-26 00:00:00',48,424.00,'542588'),
(212,'2013-02-26 00:00:00',48,848.00,'542589'),
(213,'2013-02-27 00:00:00',63,1274.00,'542590'),
(214,'2013-02-27 00:00:00',63,268.80,'542591'),
(215,'2013-02-28 00:00:00',20,1614.80,'542592'),
(216,'2013-03-01 00:00:00',63,182.40,'542593'),
(217,'2013-03-01 00:00:00',65,2327.00,'542594'),
(218,'2013-03-04 00:00:00',38,516.80,'542595'),
(219,'2013-03-04 00:00:00',65,2835.00,'542596'),
(220,'2013-03-05 00:00:00',48,288.00,'542597'),
(221,'2013-03-06 00:00:00',38,240.40,'542598'),
(222,'2013-03-06 00:00:00',80,1191.20,'542599'),
(223,'2013-03-07 00:00:00',87,516.00,'542600'),
(224,'2013-03-07 00:00:00',38,144.00,'542601'),
(225,'2013-03-08 00:00:00',58,112.00,'542602'),
(226,'2013-03-11 00:00:00',39,164.40,'542603'),
(227,'2013-03-11 00:00:00',71,6155.90,'542604'),
(228,'2013-03-12 00:00:00',39,1497.00,'542605'),
(229,'2013-03-13 00:00:00',8,982.00,'542606'),
(230,'2013-03-13 00:00:00',24,2262.50,'542607'),
(231,'2013-03-14 00:00:00',28,1168.00,'542608'),
(232,'2013-03-14 00:00:00',75,4819.40,'542609'),
(233,'2013-03-17 00:00:00',46,1940.00,'542610'),
(234,'2013-03-17 00:00:00',9,88.50,'542611'),
(235,'2013-03-18 00:00:00',51,2233.60,'542612'),
(236,'2013-03-18 00:00:00',87,954.00,'542613'),
(237,'2013-03-19 00:00:00',84,144.80,'542614'),
(238,'2013-03-20 00:00:00',37,2545.20,'542615'),
(239,'2013-03-20 00:00:00',60,316.80,'542616'),
(240,'2013-03-21 00:00:00',25,2467.00,'542617'),
(241,'2013-03-21 00:00:00',55,934.50,'542618'),
(242,'2013-03-24 00:00:00',51,3463.20,'542619'),
(243,'2013-03-24 00:00:00',9,2564.40,'542620'),
(244,'2013-03-25 00:00:00',73,412.00,'542621'),
(245,'2013-03-25 00:00:00',25,2300.80,'542622'),
(246,'2013-03-26 00:00:00',44,1586.00,'542623'),
(247,'2013-03-26 00:00:00',89,2856.00,'542624'),
(248,'2013-03-27 00:00:00',63,2924.80,'542625'),
(249,'2013-03-27 00:00:00',65,1731.20,'542626'),
(250,'2013-03-28 00:00:00',21,928.00,'542627'),
(251,'2013-03-28 00:00:00',86,396.00,'542628'),
(252,'2013-03-31 00:00:00',75,141.60,'542629'),
(253,'2013-03-31 00:00:00',41,713.40,'542630'),
(254,'2013-04-01 00:00:00',20,5677.60,'542631'),
(255,'2013-04-01 00:00:00',28,154.00,'542632'),
(256,'2013-04-02 00:00:00',59,10741.60,'542633'),
(257,'2013-04-02 00:00:00',58,568.80,'542634'),
(258,'2013-04-03 00:00:00',4,480.00,'542635'),
(259,'2013-04-03 00:00:00',86,1106.40,'542636'),
(260,'2013-04-04 00:00:00',46,1360.00,'542637'),
(261,'2013-04-04 00:00:00',41,452.00,'542638'),
(262,'2013-04-07 00:00:00',72,3654.40,'542639'),
(263,'2013-04-07 00:00:00',7,7390.20,'542640'),
(264,'2013-04-08 00:00:00',63,2273.60,'542641'),
(265,'2013-04-08 00:00:00',9,1549.60,'542642'),
(266,'2013-04-09 00:00:00',17,447.20,'542643'),
(267,'2013-04-09 00:00:00',19,950.00,'542644'),
(268,'2013-04-10 00:00:00',3,403.20,'542645'),
(269,'2013-04-10 00:00:00',29,136.00,'542646'),
(270,'2013-04-11 00:00:00',83,834.20,'542647'),
(271,'2013-04-11 00:00:00',20,1834.20,'542648'),
(272,'2013-04-14 00:00:00',75,2527.20,'542649'),
(273,'2013-04-14 00:00:00',14,1174.00,'542650'),
(274,'2013-04-15 00:00:00',41,91.20,'542651'),
(275,'2013-04-15 00:00:00',62,12281.20,'542652'),
(276,'2013-04-16 00:00:00',37,1708.00,'542653'),
(277,'2013-04-16 00:00:00',91,459.00,'542654'),
(278,'2013-04-17 00:00:00',36,338.00,'542655'),
(279,'2013-04-17 00:00:00',51,420.00,'542656'),
(280,'2013-04-18 00:00:00',72,1016.00,'542657');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(281,'2013-04-18 00:00:00',24,103.20,'542658'),
(282,'2013-04-19 00:00:00',61,959.20,'542659'),
(283,'2013-04-19 00:00:00',37,1419.80,'542660'),
(284,'2013-04-20 00:00:00',46,112.00,'542661'),
(285,'2013-04-21 00:00:00',20,2900.00,'542662'),
(286,'2013-04-21 00:00:00',4,899.00,'542663'),
(287,'2013-04-22 00:00:00',5,2222.40,'542664'),
(288,'2013-04-22 00:00:00',75,864.00,'542665'),
(289,'2013-04-23 00:00:00',21,166.00,'542666'),
(290,'2013-04-23 00:00:00',70,1058.40,'542667'),
(291,'2013-04-24 00:00:00',72,1274.00,'542668'),
(292,'2013-04-24 00:00:00',10,1832.80,'542669'),
(293,'2013-04-25 00:00:00',20,2275.20,'542670'),
(294,'2013-04-25 00:00:00',17,86.40,'542671'),
(295,'2013-04-28 00:00:00',59,1440.00,'542672'),
(296,'2013-04-28 00:00:00',71,3302.60,'542673'),
(297,'2013-04-29 00:00:00',36,442.00,'542674'),
(298,'2013-04-29 00:00:00',35,2333.20,'542675'),
(299,'2013-04-30 00:00:00',25,1903.80,'542676'),
(300,'2013-04-30 00:00:00',60,843.20,'542677'),
(301,'2013-05-01 00:00:00',71,2736.00,'542678'),
(302,'2013-05-01 00:00:00',83,1765.60,'542679'),
(303,'2013-05-02 00:00:00',19,3063.00,'542680'),
(304,'2013-05-02 00:00:00',65,3868.60,'542681'),
(305,'2013-05-05 00:00:00',20,2713.50,'542682'),
(306,'2013-05-05 00:00:00',20,1005.90,'542683'),
(307,'2013-05-06 00:00:00',49,1675.00,'542684'),
(308,'2013-05-06 00:00:00',47,400.00,'542685'),
(309,'2013-05-07 00:00:00',62,2018.20,'542686'),
(310,'2013-05-07 00:00:00',56,1194.00,'542687'),
(311,'2013-05-08 00:00:00',23,1622.40,'542688'),
(312,'2013-05-08 00:00:00',54,319.20,'542689'),
(313,'2013-05-09 00:00:00',10,802.00,'542690'),
(314,'2013-05-09 00:00:00',10,1208.50,'542691'),
(315,'2013-05-12 00:00:00',87,372.00,'542692'),
(316,'2013-05-12 00:00:00',41,2123.20,'542693'),
(317,'2013-05-13 00:00:00',21,231.40,'542694'),
(318,'2013-05-13 00:00:00',36,102.40,'542695'),
(319,'2013-05-14 00:00:00',87,720.00,'542696'),
(320,'2013-05-14 00:00:00',73,11283.20,'542697'),
(321,'2013-05-15 00:00:00',63,1814.80,'542698'),
(322,'2013-05-15 00:00:00',68,2208.00,'542699'),
(323,'2013-05-16 00:00:00',88,1897.60,'542700'),
(324,'2013-05-16 00:00:00',61,1273.20,'542701'),
(325,'2013-05-19 00:00:00',27,49.80,'542702'),
(326,'2013-05-19 00:00:00',31,1020.00,'542703'),
(327,'2013-05-20 00:00:00',51,11493.20,'542704'),
(328,'2013-05-20 00:00:00',41,480.00,'542705'),
(329,'2013-05-21 00:00:00',29,338.20,'542706'),
(330,'2013-05-21 00:00:00',59,651.00,'542707'),
(331,'2013-05-22 00:00:00',66,192.00,'542708'),
(332,'2013-05-22 00:00:00',37,1748.50,'542709'),
(333,'2013-05-23 00:00:00',20,5796.00,'542710'),
(334,'2013-05-23 00:00:00',10,2523.00,'542711'),
(335,'2013-05-26 00:00:00',75,485.00,'542712'),
(336,'2013-05-26 00:00:00',60,851.20,'542713'),
(337,'2013-05-27 00:00:00',24,360.00,'542714'),
(338,'2013-05-27 00:00:00',16,631.60,'542715'),
(339,'2013-05-28 00:00:00',7,2210.80,'542716'),
(340,'2013-05-28 00:00:00',87,393.00,'542717'),
(341,'2013-05-29 00:00:00',79,567.50,'542718'),
(342,'2013-05-29 00:00:00',51,1078.00,'542719'),
(343,'2013-05-30 00:00:00',71,5793.10,'542720'),
(344,'2013-05-30 00:00:00',55,1755.00,'542721'),
(345,'2013-06-02 00:00:00',20,1792.00,'542722'),
(346,'2013-06-02 00:00:00',66,537.60,'542723'),
(347,'2013-06-03 00:00:00',5,1031.70,'542724'),
(348,'2013-06-03 00:00:00',5,174.90,'542725'),
(349,'2013-06-04 00:00:00',79,273.60,'542726'),
(350,'2013-06-04 00:00:00',67,914.40,'542727');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(351,'2013-06-05 00:00:00',64,443.40,'542728'),
(352,'2013-06-05 00:00:00',7,1838.20,'542729'),
(353,'2013-06-06 00:00:00',84,531.40,'542730'),
(354,'2013-06-06 00:00:00',63,4277.40,'542731'),
(355,'2013-06-09 00:00:00',71,2096.00,'542732'),
(356,'2013-06-09 00:00:00',4,453.00,'542733'),
(357,'2013-06-10 00:00:00',41,414.00,'542734'),
(358,'2013-06-10 00:00:00',87,2684.00,'542735'),
(359,'2013-06-11 00:00:00',39,656.00,'542736'),
(360,'2013-06-11 00:00:00',39,1584.00,'542737'),
(361,'2013-06-12 00:00:00',48,424.00,'542738'),
(362,'2013-06-12 00:00:00',48,848.00,'542739'),
(363,'2013-06-13 00:00:00',63,1274.00,'542740'),
(364,'2013-06-13 00:00:00',63,268.80,'542741'),
(365,'2013-06-16 00:00:00',20,1614.80,'542742'),
(366,'2013-06-16 00:00:00',63,182.40,'542743'),
(367,'2013-06-17 00:00:00',65,2327.00,'542744'),
(368,'2013-06-17 00:00:00',38,516.80,'542745'),
(369,'2013-06-18 00:00:00',65,2835.00,'542746'),
(370,'2013-06-18 00:00:00',48,288.00,'542747'),
(371,'2013-06-19 00:00:00',38,240.40,'542748'),
(372,'2013-06-19 00:00:00',80,1191.20,'542749'),
(373,'2013-06-20 00:00:00',87,516.00,'542750'),
(374,'2013-06-20 00:00:00',38,144.00,'542751'),
(375,'2013-06-23 00:00:00',58,112.00,'542752'),
(376,'2013-06-23 00:00:00',39,164.40,'542753'),
(377,'2013-06-24 00:00:00',71,6155.90,'542754'),
(378,'2013-06-24 00:00:00',39,1497.00,'542755'),
(379,'2013-06-25 00:00:00',8,982.00,'542756'),
(380,'2013-06-25 00:00:00',24,2262.50,'542757'),
(381,'2013-06-26 00:00:00',28,1168.00,'542758'),
(382,'2013-06-26 00:00:00',75,4819.40,'542759'),
(383,'2013-06-27 00:00:00',46,1940.00,'542760'),
(384,'2013-06-27 00:00:00',9,88.50,'542761'),
(385,'2013-06-30 00:00:00',51,2233.60,'542762'),
(386,'2013-06-30 00:00:00',87,954.00,'542763'),
(387,'2013-07-01 00:00:00',84,144.80,'542764'),
(388,'2013-07-01 00:00:00',37,2545.20,'542765'),
(389,'2013-07-02 00:00:00',60,316.80,'542766'),
(390,'2013-07-02 00:00:00',25,2467.00,'542767'),
(391,'2013-07-03 00:00:00',55,934.50,'542768'),
(392,'2013-07-03 00:00:00',51,3463.20,'542769'),
(393,'2013-07-04 00:00:00',9,2564.40,'542770'),
(394,'2013-07-04 00:00:00',73,412.00,'542771'),
(395,'2013-07-07 00:00:00',25,2300.80,'542772'),
(396,'2013-07-07 00:00:00',44,1586.00,'542773'),
(397,'2013-07-08 00:00:00',89,2856.00,'542774'),
(398,'2013-07-08 00:00:00',63,2924.80,'542775'),
(399,'2013-07-09 00:00:00',65,1731.20,'542776'),
(400,'2013-07-09 00:00:00',21,928.00,'542777'),
(401,'2013-07-10 00:00:00',86,396.00,'542778'),
(402,'2013-07-10 00:00:00',75,141.60,'542779'),
(403,'2013-07-11 00:00:00',41,713.40,'542780'),
(404,'2013-07-11 00:00:00',20,5677.60,'542781'),
(405,'2013-07-14 00:00:00',28,154.00,'542782'),
(406,'2013-07-14 00:00:00',59,10741.60,'542783'),
(407,'2013-07-15 00:00:00',58,568.80,'542784'),
(408,'2013-07-15 00:00:00',4,480.00,'542785'),
(409,'2013-07-16 00:00:00',86,1106.40,'542786'),
(410,'2013-07-16 00:00:00',46,1360.00,'542787'),
(411,'2013-07-17 00:00:00',41,452.00,'542788'),
(412,'2013-07-17 00:00:00',72,3654.40,'542789'),
(413,'2013-07-18 00:00:00',7,7390.20,'542790'),
(414,'2013-07-18 00:00:00',63,2273.60,'542791'),
(415,'2013-07-21 00:00:00',9,1549.60,'542792'),
(416,'2013-07-21 00:00:00',17,447.20,'542793'),
(417,'2013-07-22 00:00:00',19,950.00,'542794'),
(418,'2013-07-22 00:00:00',3,403.20,'542795'),
(419,'2013-07-23 00:00:00',29,136.00,'542796'),
(420,'2013-07-23 00:00:00',83,834.20,'542797');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(421,'2013-07-24 00:00:00',20,1834.20,'542798'),
(422,'2013-07-24 00:00:00',75,2527.20,'542799'),
(423,'2013-07-25 00:00:00',14,1174.00,'542800'),
(424,'2013-07-25 00:00:00',41,91.20,'542801'),
(425,'2013-07-28 00:00:00',62,12281.20,'542802'),
(426,'2013-07-28 00:00:00',37,1708.00,'542803'),
(427,'2013-07-29 00:00:00',91,459.00,'542804'),
(428,'2013-07-29 00:00:00',36,338.00,'542805'),
(429,'2013-07-30 00:00:00',51,420.00,'542806'),
(430,'2013-07-30 00:00:00',72,1016.00,'542807'),
(431,'2013-07-31 00:00:00',24,103.20,'542808'),
(432,'2013-07-31 00:00:00',61,959.20,'542809'),
(433,'2013-08-01 00:00:00',37,1419.80,'542810'),
(434,'2013-08-01 00:00:00',46,112.00,'542811'),
(435,'2013-08-04 00:00:00',20,2900.00,'542812'),
(436,'2013-08-04 00:00:00',4,899.00,'542813'),
(437,'2013-08-05 00:00:00',5,2222.40,'542814'),
(438,'2013-08-05 00:00:00',75,864.00,'542815'),
(439,'2013-08-06 00:00:00',21,166.00,'542816'),
(440,'2013-08-06 00:00:00',70,1058.40,'542817'),
(441,'2013-08-07 00:00:00',72,1274.00,'542818'),
(442,'2013-08-07 00:00:00',10,1832.80,'542819'),
(443,'2013-08-08 00:00:00',20,2275.20,'542820'),
(444,'2013-08-08 00:00:00',17,86.40,'542821'),
(445,'2013-08-11 00:00:00',59,1440.00,'542822'),
(446,'2013-08-11 00:00:00',71,3302.60,'542823'),
(447,'2013-08-12 00:00:00',36,442.00,'542824'),
(448,'2013-08-12 00:00:00',35,2333.20,'542825'),
(449,'2013-08-13 00:00:00',25,1903.80,'542826'),
(450,'2013-08-13 00:00:00',60,843.20,'542827'),
(451,'2013-08-14 00:00:00',71,2736.00,'542828'),
(452,'2013-08-14 00:00:00',83,1765.60,'542829'),
(453,'2013-08-15 00:00:00',19,3063.00,'542830'),
(454,'2013-08-15 00:00:00',65,3868.60,'542831'),
(455,'2013-08-18 00:00:00',20,2713.50,'542832'),
(456,'2013-08-18 00:00:00',20,1005.90,'542833'),
(457,'2013-08-19 00:00:00',49,1675.00,'542834'),
(458,'2013-08-19 00:00:00',47,400.00,'542835'),
(459,'2013-08-20 00:00:00',62,2018.20,'542836'),
(460,'2013-08-20 00:00:00',56,1194.00,'542837'),
(461,'2013-08-21 00:00:00',23,1622.40,'542838'),
(462,'2013-08-21 00:00:00',54,319.20,'542839'),
(463,'2013-08-22 00:00:00',10,802.00,'542840'),
(464,'2013-08-22 00:00:00',10,1208.50,'542841'),
(465,'2013-08-25 00:00:00',87,372.00,'542842'),
(466,'2013-08-25 00:00:00',41,2123.20,'542843'),
(467,'2013-08-26 00:00:00',21,231.40,'542844'),
(468,'2013-08-26 00:00:00',36,102.40,'542845'),
(469,'2013-08-27 00:00:00',87,720.00,'542846'),
(470,'2013-08-27 00:00:00',73,11283.20,'542847'),
(471,'2013-08-28 00:00:00',63,1814.80,'542848'),
(472,'2013-08-28 00:00:00',68,2208.00,'542849'),
(473,'2013-08-29 00:00:00',88,1897.60,'542850'),
(474,'2013-08-29 00:00:00',61,1273.20,'542851'),
(475,'2013-09-01 00:00:00',27,49.80,'542852'),
(476,'2013-09-01 00:00:00',31,1020.00,'542853'),
(477,'2013-09-02 00:00:00',51,11493.20,'542854'),
(478,'2013-09-02 00:00:00',41,480.00,'542855'),
(479,'2013-09-03 00:00:00',29,338.20,'542856'),
(480,'2013-09-03 00:00:00',59,651.00,'542857'),
(481,'2013-09-04 00:00:00',66,192.00,'542858'),
(482,'2013-09-04 00:00:00',37,1748.50,'542859'),
(483,'2013-09-05 00:00:00',20,5796.00,'542860'),
(484,'2013-09-05 00:00:00',10,2523.00,'542861'),
(485,'2013-09-08 00:00:00',75,485.00,'542862'),
(486,'2013-09-08 00:00:00',60,851.20,'542863'),
(487,'2013-09-09 00:00:00',24,360.00,'542864'),
(488,'2013-09-09 00:00:00',16,631.60,'542865'),
(489,'2013-09-10 00:00:00',7,2210.80,'542866'),
(490,'2013-09-10 00:00:00',87,393.00,'542867');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(491,'2013-09-11 00:00:00',79,567.50,'542868'),
(492,'2013-09-11 00:00:00',51,1078.00,'542869'),
(493,'2013-09-12 00:00:00',71,5793.10,'542870'),
(494,'2013-09-12 00:00:00',55,1755.00,'542871'),
(495,'2013-09-15 00:00:00',20,1792.00,'542872'),
(496,'2013-09-15 00:00:00',66,537.60,'542873'),
(497,'2013-09-16 00:00:00',5,1031.70,'542874'),
(498,'2013-09-16 00:00:00',5,174.90,'542875'),
(499,'2013-09-17 00:00:00',79,273.60,'542876'),
(500,'2013-09-17 00:00:00',67,914.40,'542877'),
(501,'2013-09-18 00:00:00',64,443.40,'542878'),
(502,'2013-09-18 00:00:00',7,1838.20,'542879'),
(503,'2013-09-19 00:00:00',84,531.40,'542880'),
(504,'2013-09-19 00:00:00',63,4277.40,'542881'),
(505,'2013-09-22 00:00:00',71,2096.00,'542882'),
(506,'2013-09-22 00:00:00',4,453.00,'542883'),
(507,'2013-09-23 00:00:00',41,414.00,'542884'),
(508,'2013-09-23 00:00:00',87,2684.00,'542885'),
(509,'2013-09-24 00:00:00',39,656.00,'542886'),
(510,'2013-09-24 00:00:00',39,1584.00,'542887'),
(511,'2013-09-25 00:00:00',48,424.00,'542888'),
(512,'2013-09-25 00:00:00',48,848.00,'542889'),
(513,'2013-09-26 00:00:00',63,1274.00,'542890'),
(514,'2013-09-26 00:00:00',63,268.80,'542891'),
(515,'2013-09-29 00:00:00',20,1614.80,'542892'),
(516,'2013-09-29 00:00:00',63,182.40,'542893'),
(517,'2013-09-30 00:00:00',65,2327.00,'542894'),
(518,'2013-09-30 00:00:00',38,516.80,'542895'),
(519,'2013-10-01 00:00:00',65,2835.00,'542896'),
(520,'2013-10-01 00:00:00',48,288.00,'542897'),
(521,'2013-10-02 00:00:00',38,240.40,'542898'),
(522,'2013-10-02 00:00:00',80,1191.20,'542899'),
(523,'2013-10-03 00:00:00',87,516.00,'542900'),
(524,'2013-10-03 00:00:00',38,144.00,'542901'),
(525,'2013-10-06 00:00:00',58,112.00,'542902'),
(526,'2013-10-06 00:00:00',39,164.40,'542903'),
(527,'2013-10-07 00:00:00',71,6155.90,'542904'),
(528,'2013-10-07 00:00:00',39,1497.00,'542905'),
(529,'2013-10-08 00:00:00',8,982.00,'542906'),
(530,'2013-10-08 00:00:00',24,2262.50,'542907'),
(531,'2013-10-09 00:00:00',28,1168.00,'542908'),
(532,'2013-10-09 00:00:00',75,4819.40,'542909'),
(533,'2013-10-10 00:00:00',46,1940.00,'542910'),
(534,'2013-10-10 00:00:00',9,88.50,'542911'),
(535,'2013-10-13 00:00:00',51,2233.60,'542912'),
(536,'2013-10-13 00:00:00',87,954.00,'542913'),
(537,'2013-10-14 00:00:00',84,144.80,'542914'),
(538,'2013-10-14 00:00:00',37,2545.20,'542915'),
(539,'2013-10-15 00:00:00',60,316.80,'542916'),
(540,'2013-10-15 00:00:00',25,2467.00,'542917'),
(541,'2013-10-16 00:00:00',55,934.50,'542918'),
(542,'2013-10-16 00:00:00',51,3463.20,'542919'),
(543,'2013-10-17 00:00:00',9,2564.40,'542920'),
(544,'2013-10-17 00:00:00',73,412.00,'542921'),
(545,'2013-10-20 00:00:00',25,2300.80,'542922'),
(546,'2013-10-20 00:00:00',44,1586.00,'542923'),
(547,'2013-10-21 00:00:00',89,2856.00,'542924'),
(548,'2013-10-21 00:00:00',63,2924.80,'542925'),
(549,'2013-10-22 00:00:00',65,1731.20,'542926'),
(550,'2013-10-22 00:00:00',21,928.00,'542927'),
(551,'2013-10-23 00:00:00',86,396.00,'542928'),
(552,'2013-10-23 00:00:00',75,141.60,'542929'),
(553,'2013-10-24 00:00:00',41,713.40,'542930'),
(554,'2013-10-24 00:00:00',20,5677.60,'542931'),
(555,'2013-10-27 00:00:00',28,154.00,'542932'),
(556,'2013-10-27 00:00:00',59,10741.60,'542933'),
(557,'2013-10-28 00:00:00',58,568.80,'542934'),
(558,'2013-10-28 00:00:00',4,480.00,'542935'),
(559,'2013-10-29 00:00:00',86,1106.40,'542936'),
(560,'2013-10-29 00:00:00',46,1360.00,'542937');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(561,'2013-10-30 00:00:00',41,452.00,'542938'),
(562,'2013-10-30 00:00:00',72,3654.40,'542939'),
(563,'2013-10-31 00:00:00',7,7390.20,'542940'),
(564,'2013-10-31 00:00:00',63,2273.60,'542941'),
(565,'2013-11-03 00:00:00',9,1549.60,'542942'),
(566,'2013-11-03 00:00:00',17,447.20,'542943'),
(567,'2013-11-04 00:00:00',19,950.00,'542944'),
(568,'2013-11-04 00:00:00',3,403.20,'542945'),
(569,'2013-11-05 00:00:00',29,136.00,'542946'),
(570,'2013-11-05 00:00:00',83,834.20,'542947'),
(571,'2013-11-06 00:00:00',20,1834.20,'542948'),
(572,'2013-11-06 00:00:00',75,2527.20,'542949'),
(573,'2013-11-07 00:00:00',14,1174.00,'542950'),
(574,'2013-11-07 00:00:00',41,91.20,'542951'),
(575,'2013-11-10 00:00:00',62,12281.20,'542952'),
(576,'2013-11-10 00:00:00',37,1708.00,'542953'),
(577,'2013-11-11 00:00:00',91,459.00,'542954'),
(578,'2013-11-11 00:00:00',36,338.00,'542955'),
(579,'2013-11-12 00:00:00',51,420.00,'542956'),
(580,'2013-11-12 00:00:00',72,1016.00,'542957'),
(581,'2013-11-13 00:00:00',24,103.20,'542958'),
(582,'2013-11-13 00:00:00',61,959.20,'542959'),
(583,'2013-11-14 00:00:00',37,1419.80,'542960'),
(584,'2013-11-14 00:00:00',46,112.00,'542961'),
(585,'2013-11-17 00:00:00',20,2900.00,'542962'),
(586,'2013-11-17 00:00:00',4,899.00,'542963'),
(587,'2013-11-18 00:00:00',5,2222.40,'542964'),
(588,'2013-11-18 00:00:00',75,864.00,'542965'),
(589,'2013-11-19 00:00:00',21,166.00,'542966'),
(590,'2013-11-19 00:00:00',70,1058.40,'542967'),
(591,'2013-11-20 00:00:00',72,1274.00,'542968'),
(592,'2013-11-20 00:00:00',10,1832.80,'542969'),
(593,'2013-11-21 00:00:00',20,2275.20,'542970'),
(594,'2013-11-21 00:00:00',17,86.40,'542971'),
(595,'2013-11-24 00:00:00',59,1440.00,'542972'),
(596,'2013-11-24 00:00:00',71,3302.60,'542973'),
(597,'2013-11-25 00:00:00',36,442.00,'542974'),
(598,'2013-11-25 00:00:00',35,2333.20,'542975'),
(599,'2013-11-26 00:00:00',25,1903.80,'542976'),
(600,'2013-11-26 00:00:00',60,843.20,'542977'),
(601,'2013-11-27 00:00:00',71,2736.00,'542978'),
(602,'2013-11-27 00:00:00',83,1765.60,'542979'),
(603,'2013-11-28 00:00:00',19,3063.00,'542980'),
(604,'2013-11-28 00:00:00',65,3868.60,'542981'),
(605,'2013-12-01 00:00:00',20,2713.50,'542982'),
(606,'2013-12-01 00:00:00',20,1005.90,'542983'),
(607,'2013-12-02 00:00:00',49,1675.00,'542984'),
(608,'2013-12-02 00:00:00',47,400.00,'542985'),
(609,'2013-12-03 00:00:00',62,2018.20,'542986'),
(610,'2013-12-03 00:00:00',56,1194.00,'542987'),
(611,'2013-12-04 00:00:00',23,1622.40,'542988'),
(612,'2013-12-04 00:00:00',54,319.20,'542989'),
(613,'2013-12-05 00:00:00',10,802.00,'542990'),
(614,'2013-12-05 00:00:00',10,1208.50,'542991'),
(615,'2013-12-08 00:00:00',87,372.00,'542992'),
(616,'2013-12-08 00:00:00',41,2123.20,'542993'),
(617,'2013-12-09 00:00:00',21,231.40,'542994'),
(618,'2013-12-09 00:00:00',36,102.40,'542995'),
(619,'2013-12-10 00:00:00',87,720.00,'542996'),
(620,'2013-12-10 00:00:00',73,11283.20,'542997'),
(621,'2013-12-11 00:00:00',63,1814.80,'542998'),
(622,'2013-12-11 00:00:00',68,2208.00,'542999'),
(623,'2013-12-12 00:00:00',88,1897.60,'543000'),
(624,'2013-12-12 00:00:00',61,1273.20,'543001'),
(625,'2013-12-15 00:00:00',27,49.80,'543002'),
(626,'2013-12-15 00:00:00',31,1020.00,'543003'),
(627,'2013-12-16 00:00:00',51,11493.20,'543004'),
(628,'2013-12-16 00:00:00',41,480.00,'543005'),
(629,'2013-12-17 00:00:00',29,338.20,'543006'),
(630,'2013-12-17 00:00:00',59,651.00,'543007');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(631,'2013-12-18 00:00:00',66,192.00,'543008'),
(632,'2013-12-18 00:00:00',37,1748.50,'543009'),
(633,'2013-12-19 00:00:00',20,5796.00,'543010'),
(634,'2013-12-19 00:00:00',10,2523.00,'543011'),
(635,'2013-12-22 00:00:00',75,485.00,'543012'),
(636,'2013-12-22 00:00:00',60,851.20,'543013'),
(637,'2013-12-23 00:00:00',24,360.00,'543014'),
(638,'2013-12-23 00:00:00',16,631.60,'543015'),
(639,'2013-12-24 00:00:00',7,2210.80,'543016'),
(640,'2013-12-24 00:00:00',87,393.00,'543017'),
(641,'2013-12-25 00:00:00',79,567.50,'543018'),
(642,'2013-12-25 00:00:00',51,1078.00,'543019'),
(643,'2013-12-26 00:00:00',71,5793.10,'543020'),
(644,'2013-12-26 00:00:00',55,1755.00,'543021'),
(645,'2013-12-29 00:00:00',20,1792.00,'543022'),
(646,'2013-12-29 00:00:00',66,537.60,'543023'),
(647,'2013-12-30 00:00:00',5,1031.70,'543024'),
(648,'2013-12-30 00:00:00',5,174.90,'543025'),
(649,'2013-12-31 00:00:00',79,273.60,'543026'),
(650,'2013-12-31 00:00:00',67,914.40,'543027'),
(651,'2014-01-01 00:00:00',64,443.40,'543028'),
(652,'2014-01-01 00:00:00',7,1838.20,'543029'),
(653,'2014-01-02 00:00:00',84,531.40,'543030'),
(654,'2014-01-02 00:00:00',63,4277.40,'543031'),
(655,'2014-01-05 00:00:00',71,2096.00,'543032'),
(656,'2014-01-05 00:00:00',4,453.00,'543033'),
(657,'2014-01-06 00:00:00',41,414.00,'543034'),
(658,'2014-01-06 00:00:00',87,2684.00,'543035'),
(659,'2014-01-07 00:00:00',39,656.00,'543036'),
(660,'2014-01-07 00:00:00',39,1584.00,'543037'),
(661,'2014-01-08 00:00:00',48,424.00,'543038'),
(662,'2014-01-08 00:00:00',48,848.00,'543039'),
(663,'2014-01-09 00:00:00',63,1274.00,'543040'),
(664,'2014-01-09 00:00:00',63,268.80,'543041'),
(665,'2014-01-12 00:00:00',20,1614.80,'543042'),
(666,'2014-01-12 00:00:00',63,182.40,'543043'),
(667,'2014-01-13 00:00:00',65,2327.00,'543044'),
(668,'2014-01-13 00:00:00',38,516.80,'543045'),
(669,'2014-01-14 00:00:00',65,2835.00,'543046'),
(670,'2014-01-14 00:00:00',48,288.00,'543047'),
(671,'2014-01-15 00:00:00',38,240.40,'543048'),
(672,'2014-01-15 00:00:00',80,1191.20,'543049'),
(673,'2014-01-16 00:00:00',87,516.00,'543050'),
(674,'2014-01-16 00:00:00',38,144.00,'543051'),
(675,'2014-01-19 00:00:00',58,112.00,'543052'),
(676,'2014-01-19 00:00:00',39,164.40,'543053'),
(677,'2014-01-20 00:00:00',71,6155.90,'543054'),
(678,'2014-01-20 00:00:00',39,1497.00,'543055'),
(679,'2014-01-21 00:00:00',8,982.00,'543056'),
(680,'2014-01-21 00:00:00',24,2262.50,'543057'),
(681,'2014-01-22 00:00:00',28,1168.00,'543058'),
(682,'2014-01-22 00:00:00',75,4819.40,'543059'),
(683,'2014-01-23 00:00:00',46,1940.00,'543060'),
(684,'2014-01-23 00:00:00',9,88.50,'543061'),
(685,'2014-01-26 00:00:00',51,2233.60,'543062'),
(686,'2014-01-26 00:00:00',87,954.00,'543063'),
(687,'2014-01-27 00:00:00',84,144.80,'543064'),
(688,'2014-01-27 00:00:00',37,2545.20,'543065'),
(689,'2014-01-28 00:00:00',60,316.80,'543066'),
(690,'2014-01-28 00:00:00',25,2467.00,'543067'),
(691,'2014-01-29 00:00:00',55,934.50,'543068'),
(692,'2014-01-29 00:00:00',51,3463.20,'543069'),
(693,'2014-01-30 00:00:00',9,2564.40,'543070'),
(694,'2014-01-30 00:00:00',73,412.00,'543071'),
(695,'2014-02-02 00:00:00',25,2300.80,'543072'),
(696,'2014-02-02 00:00:00',44,1586.00,'543073'),
(697,'2014-02-03 00:00:00',89,2856.00,'543074'),
(698,'2014-02-03 00:00:00',63,2924.80,'543075'),
(699,'2014-02-04 00:00:00',65,1731.20,'543076'),
(700,'2014-02-04 00:00:00',21,928.00,'543077');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(701,'2014-02-05 00:00:00',86,396.00,'543078'),
(702,'2014-02-05 00:00:00',75,141.60,'543079'),
(703,'2014-02-06 00:00:00',41,713.40,'543080'),
(704,'2014-02-06 00:00:00',20,5677.60,'543081'),
(705,'2014-02-09 00:00:00',28,154.00,'543082'),
(706,'2014-02-09 00:00:00',59,10741.60,'543083'),
(707,'2014-02-10 00:00:00',58,568.80,'543084'),
(708,'2014-02-10 00:00:00',4,480.00,'543085'),
(709,'2014-02-11 00:00:00',86,1106.40,'543086'),
(710,'2014-02-11 00:00:00',46,1360.00,'543087'),
(711,'2014-02-12 00:00:00',41,452.00,'543088'),
(712,'2014-02-12 00:00:00',72,3654.40,'543089'),
(713,'2014-02-13 00:00:00',7,7390.20,'543090'),
(714,'2014-02-13 00:00:00',63,2273.60,'543091'),
(715,'2014-02-16 00:00:00',9,1549.60,'543092'),
(716,'2014-02-16 00:00:00',17,447.20,'543093'),
(717,'2014-02-17 00:00:00',19,950.00,'543094'),
(718,'2014-02-17 00:00:00',3,403.20,'543095'),
(719,'2014-02-18 00:00:00',29,136.00,'543096'),
(720,'2014-02-18 00:00:00',83,834.20,'543097'),
(721,'2014-02-19 00:00:00',20,1834.20,'543098'),
(722,'2014-02-19 00:00:00',75,2527.20,'543099'),
(723,'2014-02-20 00:00:00',14,1174.00,'543100'),
(724,'2014-02-20 00:00:00',41,91.20,'543101'),
(725,'2014-02-23 00:00:00',62,12281.20,'543102'),
(726,'2014-02-23 00:00:00',37,1708.00,'543103'),
(727,'2014-02-24 00:00:00',91,459.00,'543104'),
(728,'2014-02-24 00:00:00',36,338.00,'543105'),
(729,'2014-02-25 00:00:00',51,420.00,'543106'),
(730,'2014-02-25 00:00:00',72,1016.00,'543107'),
(731,'2014-02-26 00:00:00',24,103.20,'543108'),
(732,'2014-02-26 00:00:00',61,959.20,'543109'),
(733,'2014-02-27 00:00:00',37,1419.80,'543110'),
(734,'2014-02-27 00:00:00',46,112.00,'543111'),
(735,'2014-03-02 00:00:00',20,2900.00,'543112'),
(736,'2014-03-02 00:00:00',4,899.00,'543113'),
(737,'2014-03-03 00:00:00',5,2222.40,'543114'),
(738,'2014-03-03 00:00:00',75,864.00,'543115'),
(739,'2014-03-04 00:00:00',21,166.00,'543116'),
(740,'2014-03-04 00:00:00',70,1058.40,'543117'),
(741,'2014-03-05 00:00:00',72,1274.00,'543118'),
(742,'2014-03-05 00:00:00',10,1832.80,'543119'),
(743,'2014-03-06 00:00:00',20,2275.20,'543120'),
(744,'2014-03-06 00:00:00',17,86.40,'543121'),
(745,'2014-03-09 00:00:00',59,1440.00,'543122'),
(746,'2014-03-09 00:00:00',71,3302.60,'543123'),
(747,'2014-03-10 00:00:00',36,442.00,'543124'),
(748,'2014-03-10 00:00:00',35,2333.20,'543125'),
(749,'2014-03-11 00:00:00',25,1903.80,'543126'),
(750,'2014-03-11 00:00:00',60,843.20,'543127'),
(751,'2014-03-12 00:00:00',71,2736.00,'543128'),
(752,'2014-03-12 00:00:00',83,1765.60,'543129'),
(753,'2014-03-13 00:00:00',19,3063.00,'543130'),
(754,'2014-03-13 00:00:00',65,3868.60,'543131'),
(755,'2014-03-16 00:00:00',20,2713.50,'543132'),
(756,'2014-03-16 00:00:00',20,1005.90,'543133'),
(757,'2014-03-17 00:00:00',49,1675.00,'543134'),
(758,'2014-03-17 00:00:00',47,400.00,'543135'),
(759,'2014-03-18 00:00:00',62,2018.20,'543136'),
(760,'2014-03-18 00:00:00',56,1194.00,'543137'),
(761,'2014-03-19 00:00:00',23,1622.40,'543138'),
(762,'2014-03-19 00:00:00',54,319.20,'543139'),
(763,'2014-03-20 00:00:00',10,802.00,'543140'),
(764,'2014-03-20 00:00:00',10,1208.50,'543141'),
(765,'2014-03-23 00:00:00',87,372.00,'543142'),
(766,'2014-03-23 00:00:00',41,2123.20,'543143'),
(767,'2014-03-24 00:00:00',21,231.40,'543144'),
(768,'2014-03-24 00:00:00',36,102.40,'543145'),
(769,'2014-03-25 00:00:00',87,720.00,'543146'),
(770,'2014-03-25 00:00:00',73,11283.20,'543147');
INSERT INTO Orders (Order_Id,Order_Date,Customer_Id,Total_Amount,Order_Number)
values
(771,'2014-03-26 00:00:00',63,1814.80,'543148'),
(772,'2014-03-26 00:00:00',68,2208.00,'543149'),
(773,'2014-03-27 00:00:00',88,1897.60,'543150'),
(774,'2014-03-27 00:00:00',61,1273.20,'543151'),
(775,'2014-03-30 00:00:00',27,49.80,'543152'),
(776,'2014-03-30 00:00:00',31,1020.00,'543153'),
(777,'2014-03-31 00:00:00',51,11493.20,'543154'),
(778,'2014-03-31 00:00:00',41,480.00,'543155'),
(779,'2014-04-01 00:00:00',29,338.20,'543156'),
(780,'2014-04-01 00:00:00',59,651.00,'543157'),
(781,'2014-04-02 00:00:00',66,192.00,'543158'),
(782,'2014-04-02 00:00:00',37,1748.50,'543159'),
(783,'2014-04-03 00:00:00',20,5796.00,'543160'),
(784,'2014-04-03 00:00:00',10,2523.00,'543161'),
(785,'2014-04-06 00:00:00',75,485.00,'543162'),
(786,'2014-04-06 00:00:00',60,851.20,'543163'),
(787,'2014-04-07 00:00:00',24,360.00,'543164'),
(788,'2014-04-07 00:00:00',16,631.60,'543165'),
(789,'2014-04-08 00:00:00',7,2210.80,'543166'),
(790,'2014-04-08 00:00:00',87,393.00,'543167'),
(791,'2014-04-09 00:00:00',79,567.50,'543168'),
(792,'2014-04-09 00:00:00',51,1078.00,'543169'),
(793,'2014-04-10 00:00:00',71,5793.10,'543170'),
(794,'2014-04-10 00:00:00',55,1755.00,'543171'),
(795,'2014-04-13 00:00:00',20,1792.00,'543172'),
(796,'2014-04-13 00:00:00',66,537.60,'543173'),
(797,'2014-04-14 00:00:00',5,1031.70,'543174'),
(798,'2014-04-14 00:00:00',5,174.90,'543175'),
(799,'2014-04-15 00:00:00',79,273.60,'543176'),
(800,'2014-04-15 00:00:00',67,914.40,'543177'),
(801,'2014-04-16 00:00:00',64,443.40,'543178'),
(802,'2014-04-16 00:00:00',7,1838.20,'543179'),
(803,'2014-04-17 00:00:00',84,531.40,'543180'),
(804,'2014-04-17 00:00:00',63,4277.40,'543181'),
(805,'2014-04-20 00:00:00',71,2096.00,'543182'),
(806,'2014-04-20 00:00:00',4,453.00,'543183'),
(807,'2014-04-21 00:00:00',41,414.00,'543184'),
(808,'2014-04-21 00:00:00',87,2684.00,'543185'),
(809,'2014-04-22 00:00:00',39,656.00,'543186'),
(810,'2014-04-22 00:00:00',39,1584.00,'543187'),
(811,'2014-04-23 00:00:00',48,424.00,'543188'),
(812,'2014-04-23 00:00:00',48,848.00,'543189'),
(813,'2014-04-24 00:00:00',63,1274.00,'543190'),
(814,'2014-04-24 00:00:00',63,268.80,'543191'),
(815,'2014-04-27 00:00:00',20,1614.80,'543192'),
(816,'2014-04-27 00:00:00',63,182.40,'543193'),
(817,'2014-04-28 00:00:00',65,2327.00,'543194'),
(818,'2014-04-28 00:00:00',38,516.80,'543195'),
(819,'2014-04-29 00:00:00',65,2835.00,'543196'),
(820,'2014-04-29 00:00:00',48,288.00,'543197'),
(821,'2014-04-30 00:00:00',38,240.40,'543198'),
(822,'2014-04-30 00:00:00',80,1191.20,'543199'),
(823,'2014-05-01 00:00:00',87,516.00,'543200'),
(824,'2014-05-01 00:00:00',38,144.00,'543201'),
(825,'2014-05-04 00:00:00',58,112.00,'543202'),
(826,'2014-05-04 00:00:00',39,164.40,'543203'),
(827,'2014-05-05 00:00:00',71,6155.90,'543204'),
(828,'2014-05-05 00:00:00',39,1497.00,'543205'),
(829,'2014-05-06 00:00:00',8,982.00,'543206'),
(830,'2014-05-06 00:00:00',24,2262.50,'543207');
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(1,1,11,14.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(2,1,42,9.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(3,1,72,34.80,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(4,2,14,18.60,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(5,2,51,42.40,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(6,3,41,7.70,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(7,3,51,42.40,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(8,3,65,16.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(9,4,22,16.80,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(10,4,57,15.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(11,4,65,16.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(12,5,20,64.80,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(13,5,33,2.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(14,5,60,27.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(15,6,31,10.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(16,6,39,14.40,42);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(17,6,49,16.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(18,7,24,3.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(19,7,55,19.20,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(20,7,74,8.00,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(21,8,2,15.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(22,8,16,13.90,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(23,8,36,15.20,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(24,8,59,44.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(25,9,53,26.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(26,9,77,10.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(27,10,27,35.10,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(28,10,39,14.40,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(29,10,77,10.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(30,11,2,15.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(31,11,5,17.00,65);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(32,11,32,25.60,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(33,12,21,8.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(34,12,37,20.80,1);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(35,13,41,7.70,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(36,13,57,15.60,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(37,13,62,39.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(38,13,70,12.00,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(39,14,21,8.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(40,14,35,14.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(41,15,5,17.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(42,15,7,24.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(43,15,56,30.40,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(44,16,16,13.90,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(45,16,24,3.60,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(46,16,30,20.70,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(47,16,74,8.00,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(48,17,2,15.20,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(49,17,41,7.70,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(50,18,17,31.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(51,18,70,12.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(52,19,12,30.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(53,20,40,14.70,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(54,20,59,44.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(55,20,76,14.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(56,21,29,99.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(57,21,72,27.80,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(58,22,33,2.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(59,22,72,27.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(60,23,36,15.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(61,23,43,36.80,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(62,24,33,2.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(63,25,20,64.80,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(64,25,31,10.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(65,25,72,27.80,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(66,26,10,24.80,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(67,26,31,10.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(68,26,33,2.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(69,26,40,14.70,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(70,26,76,14.40,33);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(71,27,71,17.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(72,27,72,27.80,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(73,28,24,3.60,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(74,28,59,44.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(75,29,10,24.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(76,29,13,4.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(77,30,28,36.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(78,30,62,39.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(79,31,44,15.50,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(80,31,59,44.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(81,31,63,35.10,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(82,31,73,12.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(83,32,17,31.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(84,33,24,3.60,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(85,33,55,19.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(86,33,75,6.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(87,34,19,7.30,1);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(88,34,24,3.60,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(89,34,35,14.40,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(90,35,30,20.70,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(91,35,57,15.60,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(92,36,15,12.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(93,36,19,7.30,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(94,36,60,27.20,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(95,36,72,27.80,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(96,37,27,35.10,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(97,37,44,15.50,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(98,37,60,27.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(99,37,67,11.20,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(100,38,1,14.40,45);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(101,38,40,14.70,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(102,38,53,26.20,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(103,39,35,14.40,100);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(104,39,62,39.40,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(105,40,16,13.90,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(106,40,34,11.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(107,40,46,9.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(108,41,54,5.90,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(109,41,68,10.00,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(110,42,3,8.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(111,42,64,26.60,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(112,43,5,17.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(113,43,29,99.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(114,43,49,16.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(115,43,77,10.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(116,44,13,4.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(117,44,44,15.50,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(118,44,51,42.40,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(119,45,20,64.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(120,46,18,50.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(121,46,24,3.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(122,46,63,35.10,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(123,46,75,6.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(124,47,1,14.40,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(125,47,17,31.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(126,47,43,36.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(127,47,60,27.20,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(128,47,75,6.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(129,48,56,30.40,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(130,49,11,16.80,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(131,49,16,13.90,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(132,49,69,28.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(133,50,39,14.40,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(134,50,72,27.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(135,51,2,15.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(136,51,36,15.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(137,51,59,44.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(138,51,62,39.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(139,52,19,7.30,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(140,52,70,12.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(141,53,66,13.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(142,53,68,10.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(143,54,40,14.70,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(144,54,56,30.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(145,55,17,31.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(146,55,28,36.40,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(147,55,43,36.80,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(148,56,40,14.70,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(149,56,65,16.80,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(150,56,68,10.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(151,57,49,16.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(152,57,59,44.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(153,57,71,17.20,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(154,58,18,50.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(155,58,29,99.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(156,58,39,14.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(157,59,30,20.70,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(158,59,53,26.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(159,59,54,5.90,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(160,60,62,39.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(161,60,68,10.00,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(162,61,69,28.80,1);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(163,61,70,12.00,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(164,62,4,17.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(165,62,6,20.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(166,62,42,11.20,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(167,62,43,36.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(168,62,71,17.20,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(169,63,16,13.90,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(170,63,62,39.40,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(171,64,42,11.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(172,64,69,28.80,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(173,65,28,36.40,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(174,65,43,36.80,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(175,65,53,26.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(176,65,75,6.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(177,66,36,15.20,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(178,67,32,25.60,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(179,67,58,10.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(180,67,62,39.40,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(181,68,34,11.20,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(182,68,70,12.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(183,69,41,7.70,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(184,69,62,39.40,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(185,70,1,14.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(186,71,41,7.70,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(187,71,76,14.40,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(188,72,17,31.20,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(189,72,28,36.40,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(190,72,76,14.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(191,73,71,17.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(192,74,35,14.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(193,75,52,5.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(194,76,15,12.40,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(195,76,25,11.20,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(196,76,39,14.40,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(197,77,16,13.90,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(198,77,35,14.40,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(199,77,46,9.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(200,77,59,44.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(201,77,63,35.10,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(202,78,6,20.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(203,78,13,4.80,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(204,78,14,18.60,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(205,78,31,10.00,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(206,78,72,27.80,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(207,79,4,17.60,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(208,79,57,15.60,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(209,79,75,6.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(210,80,2,15.20,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(211,80,11,16.80,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(212,80,30,20.70,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(213,80,58,10.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(214,81,59,44.00,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(215,81,65,16.80,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(216,81,68,10.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(217,82,19,7.30,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(218,82,30,20.70,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(219,82,38,210.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(220,82,56,30.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(221,83,26,24.90,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(222,83,72,27.80,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(223,84,54,5.90,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(224,85,18,50.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(225,85,42,11.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(226,85,47,7.60,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(227,86,14,18.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(228,86,21,8.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(229,86,71,17.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(230,87,52,5.60,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(231,87,68,10.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(232,88,2,15.20,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(233,88,31,10.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(234,88,32,25.60,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(235,88,51,42.40,48);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(236,89,4,17.60,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(237,90,23,7.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(238,90,26,24.90,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(239,90,36,15.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(240,90,37,20.80,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(241,90,72,27.80,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(242,91,17,31.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(243,91,30,20.70,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(244,92,4,17.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(245,92,17,31.20,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(246,92,62,39.40,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(247,93,18,50.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(248,93,41,7.70,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(249,93,43,36.80,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(250,94,33,2.00,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(251,94,59,44.00,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(252,95,2,15.20,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(253,95,31,10.00,56);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(254,95,36,15.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(255,95,55,19.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(256,96,64,26.60,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(257,96,68,10.00,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(258,96,76,14.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(259,97,4,17.60,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(260,97,8,32.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(261,98,8,32.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(262,98,19,7.30,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(263,98,42,11.20,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(264,99,17,31.20,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(265,99,56,30.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(266,100,25,11.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(267,100,39,14.40,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(268,100,40,14.70,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(269,100,75,6.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(270,101,1,14.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(271,101,23,7.20,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(272,102,54,5.90,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(273,103,50,13.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(274,103,69,28.80,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(275,104,38,210.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(276,104,41,7.70,13);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(277,104,44,15.50,77);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(278,104,65,16.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(279,105,24,3.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(280,105,54,5.90,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(281,106,11,16.80,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(282,106,38,210.80,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(283,107,1,14.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(284,107,29,99.00,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(285,108,24,3.60,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(286,108,57,15.60,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(287,109,31,10.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(288,109,55,19.20,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(289,109,69,28.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(290,110,10,24.80,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(291,110,26,24.90,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(292,110,60,27.20,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(293,111,24,3.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(294,111,34,11.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(295,111,36,15.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(296,112,16,13.90,56);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(297,112,31,10.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(298,112,60,27.20,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(299,113,28,36.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(300,113,29,99.00,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(301,113,38,210.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(302,113,49,16.00,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(303,113,54,5.90,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(304,114,39,14.40,54);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(305,114,60,27.20,55);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(306,115,25,11.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(307,115,51,42.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(308,115,54,5.90,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(309,116,31,10.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(310,116,75,6.20,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(311,116,76,14.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(312,117,69,28.80,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(313,117,71,17.20,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(314,118,11,16.80,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(315,119,65,16.80,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(316,119,77,10.40,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(317,120,34,11.20,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(318,120,54,5.90,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(319,120,65,16.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(320,120,77,10.40,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(321,121,21,8.00,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(322,121,28,36.40,13);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(323,121,57,15.60,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(324,121,64,26.60,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(325,122,29,99.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(326,122,56,30.40,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(327,123,1,14.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(328,123,64,26.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(329,123,74,8.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(330,124,36,15.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(331,125,20,64.80,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(332,125,38,210.80,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(333,125,60,27.20,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(334,125,72,27.80,42);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(335,126,58,10.60,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(336,126,71,17.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(337,127,31,10.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(338,127,58,10.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(339,128,14,18.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(340,128,54,5.90,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(341,129,31,10.00,42);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(342,130,28,36.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(343,130,39,14.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(344,131,71,17.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(345,132,41,7.70,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(346,132,63,35.10,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(347,132,65,16.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(348,133,30,20.70,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(349,133,53,26.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(350,133,60,27.20,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(351,133,70,12.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(352,134,74,8.00,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(353,135,5,17.00,32);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(354,135,18,50.00,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(355,135,29,99.00,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(356,135,33,2.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(357,135,74,8.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(358,136,13,4.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(359,136,50,13.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(360,136,56,30.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(361,137,20,64.80,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(362,137,60,27.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(363,138,7,24.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(364,138,60,27.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(365,138,68,10.00,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(366,139,24,3.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(367,139,34,11.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(368,140,24,3.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(369,140,28,36.40,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(370,140,59,44.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(371,140,71,17.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(372,141,45,7.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(373,141,52,5.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(374,141,53,26.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(375,142,10,24.80,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(376,142,55,19.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(377,142,62,39.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(378,142,70,12.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(379,143,31,10.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(380,143,35,14.40,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(381,143,46,9.60,45);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(382,143,72,27.80,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(383,144,13,4.80,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(384,145,69,28.80,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(385,146,2,15.20,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(386,146,14,18.60,42);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(387,146,25,11.20,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(388,146,26,24.90,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(389,146,31,10.00,32);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(390,147,13,4.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(391,147,62,39.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(392,148,46,9.60,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(393,148,53,26.20,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(394,148,69,28.80,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(395,149,23,7.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(396,149,71,17.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(397,149,72,27.80,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(398,150,21,8.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(399,150,51,42.40,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(400,151,35,14.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(401,151,55,19.20,120);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(402,152,68,10.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(403,152,71,17.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(404,152,76,14.40,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(405,152,77,10.40,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(406,153,29,99.00,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(407,153,35,14.40,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(408,153,49,16.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(409,154,30,20.70,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(410,154,56,30.40,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(411,154,65,16.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(412,154,71,17.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(413,155,23,7.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(414,155,63,35.10,65);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(415,156,16,13.90,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(416,156,48,10.20,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(417,157,26,24.90,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(418,157,42,11.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(419,157,49,16.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(420,158,3,8.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(421,159,1,14.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(422,159,21,8.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(423,159,28,36.40,42);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(424,159,36,15.20,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(425,159,40,14.70,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(426,160,11,16.80,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(427,160,69,28.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(428,160,71,17.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(429,161,37,20.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(430,161,54,5.90,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(431,161,62,39.40,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(432,162,14,18.60,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(433,162,21,8.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(434,163,33,2.00,49);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(435,163,59,44.00,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(436,164,41,7.70,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(437,164,44,15.50,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(438,164,59,44.00,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(439,165,14,18.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(440,166,1,14.40,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(441,166,62,39.40,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(442,166,76,14.40,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(443,167,19,7.30,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(444,167,33,2.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(445,168,17,31.20,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(446,168,33,2.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(447,169,19,7.30,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(448,169,53,26.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(449,169,57,15.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(450,170,38,210.80,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(451,170,46,9.60,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(452,170,68,10.00,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(453,170,77,10.40,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(454,171,2,15.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(455,171,47,7.60,55);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(456,171,61,22.80,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(457,171,74,8.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(458,172,60,27.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(459,172,69,28.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(460,173,9,77.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(461,173,13,4.80,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(462,173,70,12.00,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(463,173,73,12.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(464,174,19,7.30,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(465,174,26,24.90,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(466,174,53,26.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(467,174,77,10.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(468,175,26,24.90,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(469,176,31,10.00,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(470,176,59,44.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(471,177,35,14.40,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(472,177,38,210.80,49);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(473,177,68,10.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(474,178,55,19.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(475,178,76,14.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(476,179,56,30.40,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(477,179,64,26.60,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(478,180,14,18.60,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(479,181,46,9.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(480,182,50,13.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(481,182,63,35.10,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(482,183,17,31.20,45);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(483,183,21,8.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(484,183,56,30.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(485,183,59,44.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(486,184,17,31.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(487,184,40,14.70,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(488,184,47,7.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(489,185,26,24.90,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(490,185,54,5.90,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(491,186,56,30.40,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(492,187,11,16.80,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(493,187,76,14.40,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(494,188,2,15.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(495,188,22,16.80,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(496,188,72,27.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(497,189,46,9.60,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(498,189,56,30.40,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(499,189,64,26.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(500,189,75,6.20,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(501,190,53,26.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(502,191,19,7.30,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(503,191,34,11.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(504,191,57,15.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(505,192,12,30.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(506,192,16,13.90,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(507,192,64,26.60,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(508,192,74,8.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(509,193,2,15.20,45);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(510,193,16,13.90,49);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(511,193,29,99.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(512,193,61,22.80,90);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(513,194,27,35.10,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(514,195,11,16.80,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(515,195,54,5.90,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(516,195,66,13.60,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(517,196,11,16.80,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(518,196,28,36.40,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(519,197,17,31.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(520,197,26,24.90,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(521,197,35,14.40,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(522,197,41,7.70,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(523,198,39,14.40,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(524,198,54,5.90,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(525,199,19,7.30,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(526,199,24,3.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(527,199,31,10.00,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(528,199,52,5.60,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(529,200,19,7.30,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(530,200,65,16.80,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(531,200,71,17.20,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(532,201,26,24.90,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(533,201,40,14.70,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(534,202,10,24.80,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(535,202,52,5.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(536,202,62,39.40,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(537,203,10,24.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(538,203,54,5.90,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(539,204,55,19.20,120);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(540,204,64,26.60,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(541,204,65,16.80,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(542,204,77,10.40,55);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(543,205,28,36.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(544,205,44,15.50,100);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(545,206,48,10.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(546,206,70,12.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(547,207,16,13.90,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(548,207,33,2.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(549,207,46,9.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(550,208,39,14.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(551,208,53,26.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(552,208,61,22.80,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(553,208,71,17.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(554,209,21,8.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(555,209,49,16.00,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(556,210,59,44.00,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(557,211,26,24.90,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(558,211,28,36.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(559,211,43,36.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(560,211,56,30.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(561,211,71,17.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(562,212,7,24.00,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(563,212,46,9.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(564,212,72,27.80,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(565,213,68,10.00,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(566,213,75,6.20,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(567,214,21,8.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(568,214,30,20.70,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(569,214,55,19.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(570,215,13,4.80,1);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(571,215,23,7.20,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(572,216,19,7.30,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(573,216,42,11.20,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(574,217,4,17.60,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(575,217,43,36.80,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(576,217,56,30.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(577,217,60,27.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(578,218,24,3.60,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(579,218,29,99.00,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(580,218,40,14.70,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(581,218,45,7.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(582,218,50,13.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(583,219,11,16.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(584,219,46,9.60,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(585,220,24,3.60,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(586,220,25,11.20,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(587,221,30,20.70,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(588,221,43,36.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(589,222,2,15.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(590,222,16,13.90,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(591,222,44,15.50,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(592,223,18,50.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(593,223,23,7.20,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(594,223,64,26.60,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(595,224,7,24.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(596,224,56,30.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(597,225,24,3.60,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(598,225,51,42.40,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(599,226,33,2.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(600,226,71,17.20,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(601,227,14,18.60,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(602,227,28,36.40,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(603,227,40,14.70,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(604,227,75,6.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(605,228,31,10.00,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(606,228,66,13.60,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(607,228,76,14.40,42);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(608,229,55,19.20,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(609,229,70,12.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(610,230,1,14.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(611,230,21,8.00,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(612,230,39,14.40,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(613,231,10,24.80,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(614,232,38,210.80,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(615,232,53,26.20,28);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(616,232,59,44.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(617,232,64,26.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(618,233,47,7.60,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(619,233,59,44.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(620,234,49,16.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(621,234,60,27.20,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(622,235,40,14.70,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(623,236,34,11.20,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(624,236,77,10.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(625,237,21,8.00,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(626,237,40,14.70,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(627,237,51,42.40,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(628,238,2,15.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(629,238,3,8.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(630,238,55,19.20,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(631,238,70,12.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(632,239,11,16.80,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(633,239,51,42.40,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(634,239,74,8.00,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(635,240,19,7.30,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(636,240,26,24.90,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(637,240,54,5.90,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(638,241,59,44.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(639,241,73,12.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(640,242,11,16.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(641,242,16,13.90,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(642,243,59,44.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(643,243,68,10.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(644,243,75,6.20,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(645,244,44,15.50,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(646,244,77,10.40,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(647,245,25,11.20,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(648,245,42,11.20,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(649,246,65,16.80,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(650,246,66,13.60,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(651,246,69,28.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(652,247,56,30.40,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(653,248,23,7.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(654,248,41,7.70,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(655,248,77,10.40,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(656,249,31,10.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(657,250,56,30.40,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(658,250,72,27.80,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(659,250,77,10.40,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(660,251,24,4.50,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(661,251,40,18.40,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(662,251,42,14.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(663,252,28,45.60,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(664,252,49,20.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(665,253,15,15.50,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(666,253,28,45.60,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(667,254,54,7.45,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(668,255,45,9.50,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(669,255,53,32.80,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(670,255,67,14.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(671,256,14,23.25,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(672,256,65,21.05,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(673,257,2,19.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(674,257,21,10.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(675,257,53,32.80,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(676,257,61,28.50,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(677,258,62,49.30,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(678,259,25,14.00,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(679,259,70,15.00,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(680,260,43,46.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(681,260,48,12.75,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(682,261,13,6.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(683,261,39,18.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(684,262,28,45.60,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(685,263,29,123.79,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(686,263,75,7.75,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(687,264,4,22.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(688,264,7,30.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(689,264,8,40.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(690,265,24,4.50,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(691,265,46,12.00,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(692,265,47,9.50,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(693,265,60,34.00,12);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(694,266,21,10.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(695,266,32,32.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(696,266,61,28.50,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(697,267,20,81.00,39);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(698,267,28,45.60,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(699,267,56,38.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(700,267,65,21.05,39);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(701,267,75,7.75,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(702,268,9,97.00,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(703,268,16,17.45,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(704,268,27,43.90,120);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(705,268,33,2.50,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(706,268,60,34.00,84);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(707,269,18,62.50,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(708,269,41,9.65,80);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(709,269,42,14.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(710,270,52,7.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(711,270,59,55.00,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(712,270,70,15.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(713,271,24,4.50,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(714,271,38,263.50,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(715,271,44,19.45,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(716,272,10,31.00,16);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(717,272,56,38.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(718,272,60,34.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(719,273,24,4.50,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(720,273,53,32.80,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(721,274,35,18.00,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(722,274,41,9.65,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(723,274,68,12.50,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(724,275,1,18.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(725,275,8,40.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(726,275,30,25.89,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(727,275,40,18.40,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(728,276,17,39.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(729,276,20,81.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(730,276,37,26.00,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(731,276,41,9.65,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(732,277,10,31.00,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(733,277,30,25.89,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(734,277,43,46.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(735,277,54,7.45,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(736,278,36,19.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(737,278,40,18.40,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(738,279,1,18.00,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(739,279,13,6.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(740,279,56,38.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(741,280,4,22.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(742,280,36,19.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(743,281,11,21.00,3);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(744,281,33,2.50,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(745,281,72,34.80,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(746,282,55,24.00,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(747,282,68,12.50,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(748,282,69,36.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(749,283,17,39.00,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(750,283,43,46.00,25);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(751,283,61,28.50,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(752,283,76,18.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(753,284,59,55.00,2);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(754,285,30,25.89,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(755,285,66,17.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(756,286,4,22.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(757,286,72,34.80,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(758,286,73,15.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(759,287,30,25.89,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(760,287,40,18.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(761,287,54,7.45,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(762,288,11,21.00,50);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(763,288,40,18.40,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(764,288,57,19.50,5);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(765,288,59,55.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(766,289,12,38.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(767,289,31,12.50,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(768,289,33,2.50,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(769,289,60,34.00,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(770,290,31,12.50,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(771,290,51,53.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(772,290,58,13.25,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(773,290,72,34.80,21);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(774,290,73,15.00,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(775,291,70,15.00,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(776,291,72,34.80,1);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(777,292,13,6.00,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(778,292,21,10.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(779,292,33,2.50,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(780,292,49,20.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(781,293,3,10.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(782,293,26,31.23,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(783,293,38,263.50,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(784,293,68,12.50,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(785,294,24,4.50,35);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(786,294,38,263.50,4);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(787,294,65,21.05,36);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(788,294,71,21.50,9);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(789,295,11,21.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(790,295,54,7.45,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(791,296,12,38.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(792,296,23,9.00,70);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(793,297,28,45.60,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(794,297,67,14.00,7);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(795,298,11,21.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(796,299,7,30.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(797,299,35,18.00,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(798,299,62,49.30,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(799,300,32,32.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(800,300,36,19.00,60);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(801,301,34,14.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(802,301,41,9.65,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(803,302,31,12.50,55);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(804,302,45,9.50,100);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(805,302,51,53.00,48);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(806,303,17,39.00,8);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(807,303,19,9.20,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(808,303,21,10.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(809,303,61,28.50,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(810,304,16,17.45,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(811,304,35,18.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(812,304,44,19.45,40);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(813,305,69,36.00,18);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(814,305,75,7.75,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(815,306,11,21.00,15);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(816,306,16,17.45,14);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(817,306,22,21.00,24);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(818,306,31,12.50,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(819,306,35,18.00,6);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(820,307,16,17.45,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(821,307,23,9.00,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(822,307,62,49.30,20);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(823,307,77,13.00,10);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(824,308,14,23.25,30);
INSERT INTO Order_Items (ORDER_ITEMID,Order_ID,Product_Id,UNITPRICE,QUANTITY)VALUES(825,308,19,9.20,35);







