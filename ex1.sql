CREATE TABLE item (
  itemId INTEGER NOT NULL PRIMARY KEY,
  itemName TEXT NOT NULL,
  price float NOT NULL
);
CREATE TABLE customer(
    customerId INTEGER NOT NULL PRIMARY KEY,
    customerName TEXT,
    city TEXT,
    orderId INTEGER NOT NULL
);
CREATE TABLE orders(
    orderId INTEGER NOT NULL PRIMARY KEY,
    date date,
    quant INTEGER,
    itemId INTEGER NOT NULL ,
   FOREIGN KEY (itemId) references item(itemId)
);

-- Insereting values
INSERT INTO item (itemId, itemName, price)
VALUES (3786, "Net" , 35.0),
        (4011, "Racket", 65.0),
        (9132, "Pack-3", 4.75),
        (5794, "Pack-6", 5.0),
        (3171, "Cover", 10.0);
INSERT INTO customer (customerId, customerName, city, orderId)
VALUES (101, "Martin", "Prague" ,2301 ),
        (107, "Herman", "Madrid", 2302),
        (110, "Pedro", "Moscow", 2302);
INSERT INTO orders (orderId, date, quant, itemId)        
VALUES (2301, 23/02/2011, 3, 3786),
        (2301, 23/02/2011, 6, 4011);
-- Queries
-- Calculate the total number of items per order 
-- and the total amount to pay for the order
