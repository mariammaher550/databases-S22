-- create a table
CREATE TABLE customer(
    customerId int NOT NULL primary key,
    customerName TEXT,
    city TEXT
);
CREATE TABLE orders(
  orderId int NOT NULL primary key, 
  customerId int,
  date date, 
  foreign key (customerId)
  references customer (customerId)
);
CREATE TABLE item(
    itemId int NOT NULL  primary key,
    itemName TEXT,
    price float
);
CREATE TABLE orderDetails(
    orderId int,
    itemId int,
    quant int, 
    foreign key (itemId) references item(itemId),
    foreign key (orderId) references orders(orderId)
);

-- inserting data

 INSERT INTO customer(customerId, customerName, city)
 VALUES (101, "Martin", "Pargue"),
        (107, "Herman", "Madrid"),
        (110, "Pedro", "Moscow");
        
INSERT INTO item(itemId, itemName, price)
VALUES (3786 , "Net", 35.0),
        (4011, "Racket", 65.00),
        (9132, "Pack-3", 4.75),
        (5794, "Pack-6", 5.0),
        (3141, "Cover", 10);
        
INSERT INTO orderDetails(orderId, itemId, quant)
VALUES (2301, 3786, 3),
        (2301, 4011, 6),
        (2301, 9132, 8),
        (2302, 5794, 4),
        (2303, 4011, 2),
        (2303, 3141, 2);
        
INSERT INTO orders(orderId, customerId, date)
values (2301, 101, 23/02/2011),
        (2302, 107, 25/02/2011),
        (2303, 110 , 27/02/2011);
        

-- performing queries
-- Calculate the total number of items per order and 
-- the total amount to pay for the order
SELECT orderId , SUM(quant), SUM(quant * price)
    FROM orderDetails LEFT OUTER JOIN item
    on orderDetails.itemId = item.itemId
    GROUP by orderId;
 
        
--  Obtain the customer whose purchase in terms of money has been 
-- greater than the others
       
