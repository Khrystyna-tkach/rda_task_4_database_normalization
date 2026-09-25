-- Create database and tables

CREATE DATABASE ShopDB;
USE ShopDB;

CREATE TABLE Countries (
    ID INT,
    Name VARCHAR(50),
    PRIMARY KEY (ID)
);

create table Products (
    ID int,
    ProductName varchar(50),
    PRIMARY KEY ID
);

create table Warehouses (
    WarehouseID INT,
    WarehouseName varchar(50),
    WarehouseAmount int,
    WarehouseAddress varchar(50),
    FOREIGN KEY (CountryID) REFERENCES Countries(ID) ON DELETE NO ACTION,
    PRIMARY KEY (WarehouseID)
);

CREATE TABLE ProductInventory (
    ID INT,
    ProductID int,
    WarehouseID int,
    WarehouseAmount int,
    FOREIGN KEY (ProductID) REFERENCES Products(ID) ON DELETE NO ACTION,
    FOREIGN KEY (WarehouseID) REFERENCES Warehouses(ID) ON DELETE NO ACTION,
    PRIMARY KEY (ID)
);

-- Populate test data

INSERT INTO Countries (ID,Name)
	VALUES (1, 'Country1');
INSERT INTO Countries (ID,Name)
	VALUES (2, 'Country2');

insert into Products (ID, Name)
values (1, 'AwersomeProduct');

insert into Warehouses (ID, Name, Address, CountyID)
values (1, 'Warehouse-1', 'City-2, Street-2', 2);

INSERT INTO Warehouses (ID, Name, Address, CountryID)
VALUES (2, 'Warehouse-2', 'City-2, Street-2', 2);

INSERT INTO ProductInventory (ID, ProductID, WarehouseID, WarehouseAmount)
VALUES (1, 1, 1, 2);

INSERT INTO ProductInventory (ID, ProductID, WarehouseID, WarehouseAmount)
VALUES (2, 1, 2, 5);