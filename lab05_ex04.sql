CREATE TABLE SalesPerson(
  sp_id int PRIMARY KEY
);
CREATE TABLE Customer( 
  customer_id int PRIMARY KEY
);
CREATE TABLE Mechanic( 
  mechanic_id int PRIMARY KEY
);
CREATE TABLE Car(
  car_id int PRIMARY KEY,
  customer_id int,
  sp_id int,
  foreign key(sp_id) REFERENCES SalesPerson(sp_id),
  foreign key(customer_id) REFERENCES Customer(customer_id)
);
CREATE TABLE Invoice(
  invoice_id int PRIMARY KEY,
  _i int,
  invoiceDate date,
  foreign key(_i) REFERENCES Car(_i)
);CREATE TABLE ServiceTicket(
  service_id int PRIMARY KEY,
  customer_id int,
  carSerialNumber VARCHAR(10),
  serviceDate date,
  description VARCHAR(300),
  foreign key (customer_id) REFERENCES Customer(customer_id)
);CREATE TABLE mechanicService(
  _i int,
  service_id int,
  foreign key (_i) REFERENCES Mechanic(_i),
  foreign key(service_id) references ServiceTicket(service_id)
 );CREATE TABLE CarDealerShip(
  carSerialNumber int,
  service_id int,
  foreign key(service_id) references ServiceTicket(service_id)
);
