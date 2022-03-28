
CREATE TABLE Customers
(
customer_id int NOT NULL PRIMARY KEY,
balance  decimal,
creditLimit decimal,
discount decimal,
 address_id int,
 foreign key(address_id) REFERENCES address(address_id)
);
CREATE TABLE Order(
order_id int NOT NULL PRIMARY KEY,
date date NOT NULL,
 customer_id int,
   foreign key(customer_id) REFERENCES Customers(customer_id),
   addressId INTEGER,
   foreign key(address_id) REFERENCES address(address_id)

);
CREATE TABLE address(
house char(50),
city char(50),
street char(50),
district char(50),
);
CREATE TABLE item(
item_id int NOT NULL PRIMARY KEY,
description char(250), 
quantity int,

);
CREATE TABLE Manufacturer (
manufacturer_id int NOT NULL PRIMARY KEY,
phone_number char(13),
);
CREATE TABLE Catalog(
item_id int NOT NULL PRIMARY KEY,
manufacturer_id NoT NULL PRIMARY KEY,
 foreign key (manufacturer_id) REFERENCES Manufacturer(manufacturer_id),
 foreign key (item_id) REFERENCES Item(item_id)

);
CREATE TABLE Include(
item_id NOT NULL PRIMARY KEY,
order_id NOT NULL PRIMARY KEY,
  foreign key(order_id) REFERENCES Order_details(order_id),
  foreign key (item_id) REFERENCES Item(item_id)
);


