USE [CustomerLib_Krasnoperov]

-- Valid insert into Customer
insert into [Customers]
values('Ilya','Krasnoperov','123123123','goneron@mail.ru','any notes',100.50),
('Anton','Antonov','913111865','A.antonov@mail.ru','any notes1',70.2),
('Maria','Marionova','952645654','M.mario@mail.ru','any notes2',30.1)

-- Valid insert into Address
insert into [Addresses]
values(1,'Podgronaya 24',null,'Billing','Tomsk','12334','Tomsk region','Canada'),
(2,'Podgronaya 76',null,'Shipping','Tomsk','54335','Tomsk region','Canada'),
(3,'Lesnaya 43',null,'Billing','Tomsk','123888','Tomsk region','United States')

-- Invalid inserts into Customer
-- Falid with phone number
insert into [Customers]
values('Ilya','Krasnoperov','1232312355','goneron@mail.ru','any notes',100.50)
-- Failed with email
insert into [Customers]
values('Ilya','Krasnoperov','123231235','goneron@mailru','any notes',100.50)
-- Failed with not provided Last Name
insert into [Customers]
values('Ilya',null,'123231235','goneron@mailru','any notes',100.50)

-- Invalid inserts into Address
-- Failed with foreign key
insert into [Addresses]
values(53,'Podgronaya 24',null,'Billing','Tomsk','12334','Tomsk region','Canada')

-- Failed with Address Type
insert into [Addresses]
values(1,'Podgronaya 24',null,'not-billing','Tomsk','12334','Tomsk region','Canada')

-- Failed with Country
insert into [Addresses]
values(1,'Podgronaya 24',null,'Billing','Tomsk','12334','Tomsk region','Russia')