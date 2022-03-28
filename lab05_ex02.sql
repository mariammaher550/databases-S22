CREATE TABLE Group(
group_id int NOT NULL PRIMARY KEY
);
CREATE TABLE Company(
company_id int NOT NULL PRIMARY KEY
);
CREATE TABLE Plant(
plant_id int NOT NULL PRIMARY KEY
);
CREATE TABLE Item(
item_id int NOT NULL PRIMARY KEY
);
CREATE TABLE Catalog(
 plant_id int,
 item_id int,
  foreign key(item_id) references Item(item_id),
  foreign key(plant_id) references Plant(plant_id)
);
CREATE TABLE GroupOfCompanies(
group_id int,
company_id int,
 foreign key(company_id) references Company(company_id),
 foreign key(group_id) references CGroup(group_id),
);
CREATE TABLE Structure(
company_id1 int,
company_id2 int,
 foreign key(company_id1) references Company(companyId),
   foreign key(company_id2) references Company(companyId)
);
CREATE TABLE CompanyAndPlant (
company_id int,
plant_id int,
 foreign key(company_id) references Company(company_id),
  foreign key(plant_id) references Plant(plant_id)
);
