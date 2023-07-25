-- Database: Northwind

DROP TABLE IF EXISTS Category;

CREATE TABLE Category 
  ( 
     categoryid   SERIAL PRIMARY KEY NOT NULL, 
     categoryname VARCHAR (15) NOT NULL, 
     description  TEXT NULL, 
     picture      BYTEA NULL 
  ); 


DROP TABLE IF EXISTS Region;

CREATE TABLE Region 
  ( 
     regionid          INT NOT NULL, 
     regiondescription VARCHAR (50) NOT NULL, 
     PRIMARY KEY ( regionid ) 
  ); 


DROP TABLE IF EXISTS Territory;

CREATE TABLE  Territory 
  ( 
     territoryid          VARCHAR (20) NOT NULL, 
     territorydescription VARCHAR (50) NOT NULL, 
     regionid             INT NOT NULL, 
     PRIMARY KEY ( territoryid ) 
  ); 

DROP TABLE IF EXISTS CustomerCustomerDemographic;

CREATE TABLE CustomerCustomerDemographic 
  ( 
     customerid     VARCHAR (5) NOT NULL, 
     customertypeid VARCHAR (10) NOT NULL, 
     PRIMARY KEY ( customerid, customertypeid ) 
  ); 

DROP TABLE IF EXISTS CustomerDemographic;

CREATE TABLE CustomerDemographic 
  ( 
     customertypeid VARCHAR (10) NOT NULL, 
     customerdesc   TEXT NULL, 
     PRIMARY KEY ( customertypeid ) 
  ); 

DROP TABLE IF EXISTS Customer;

CREATE TABLE Customer 
  ( 
     custid       SERIAL PRIMARY KEY NOT NULL, 
     companyname  VARCHAR (40) NOT NULL, 
     contactname  VARCHAR (30) NULL, 
     contacttitle VARCHAR (30) NULL, 
     address      VARCHAR (60) NULL, 
     city         VARCHAR (15) NULL, 
     region       VARCHAR (15) NULL, 
     postalcode   VARCHAR (10) NULL, 
     country      VARCHAR (15) NULL, 
     phone        VARCHAR (24) NULL, 
     fax          VARCHAR (24) NULL
    -- PRIMARY KEY ( custid ) 
  ); 


DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee 
  ( 
     empid      SERIAL  PRIMARY KEY NOT NULL, 
     lastname        VARCHAR (20) NOT NULL, 
     firstname       VARCHAR (10) NOT NULL, 
     title           VARCHAR (30) NULL, 
     titleofcourtesy VARCHAR (25) NULL, 
     birthdate       TIMESTAMP NULL, 
     hiredate        TIMESTAMP NULL, 
     address         VARCHAR (60) NULL, 
     city            VARCHAR (15) NULL, 
     region          VARCHAR (15) NULL, 
     postalcode      VARCHAR (10) NULL, 
     country         VARCHAR (15) NULL, 
     phone       VARCHAR (24) NULL, 
     extension       VARCHAR (4) NULL, 
     photo           BYTEA NULL, 
     notes           TEXT NULL, 
     mgrid       INT NULL, 
     photopath       VARCHAR (255) NULL
  --   PRIMARY KEY ( empid ) 
  ); 

DROP TABLE IF EXISTS EmployeeTerritory;
CREATE TABLE EmployeeTerritory 
  ( 
     employeeid  INT NOT NULL, 
     territoryid VARCHAR (20) NOT NULL, 
     PRIMARY KEY ( employeeid, territoryid ) 
  ); 



DROP TABLE IF EXISTS Product;
CREATE TABLE  Product
  ( 
     productid       SERIAL      PRIMARY KEY NOT NULL, 
     productname     VARCHAR (40) NOT NULL, 
     supplierid      INT NULL, 
     categoryid      INT NULL, 
     quantityperunit VARCHAR (20) NULL, 
     unitprice       DECIMAL(10, 2) NULL, 
     unitsinstock    SMALLINT NULL, 
     unitsonorder    SMALLINT NULL, 
     reorderlevel    SMALLINT NULL, 
     discontinued    CHAR(1) NOT NULL
  ); 


DROP TABLE IF EXISTS Shipper;
CREATE TABLE Shipper 
  ( 
     shipperid   SERIAL NOT NULL, 
     companyname VARCHAR (40) NOT NULL, 
     phone       VARCHAR (44) NULL, 
     PRIMARY KEY ( shipperid ) 
  ); 

DROP TABLE IF EXISTS Supplier;
CREATE TABLE Supplier 
  ( 
     supplierid   SERIAL  PRIMARY KEY NOT NULL, 
     companyname  VARCHAR (40) NOT NULL, 
     contactname  VARCHAR (30) NULL, 
     contacttitle VARCHAR (30) NULL, 
     address      VARCHAR (60) NULL, 
     city         VARCHAR (15) NULL, 
     region       VARCHAR (15) NULL, 
     postalcode   VARCHAR (10) NULL, 
     country      VARCHAR (15) NULL, 
     phone        VARCHAR (24) NULL, 
     fax          VARCHAR (24) NULL, 
     homepage     TEXT NULL
  ); 


DROP TABLE IF EXISTS SalesOrder;
CREATE TABLE SalesOrder 
  ( 
     orderid        SERIAL NOT NULL, 
     custid         VARCHAR (15) NULL, 
     empid          INT NULL, 
     orderdate      TIMESTAMP NULL, 
     requireddate   TIMESTAMP NULL, 
     shippeddate    TIMESTAMP NULL, 
     shipperid      INT NULL, 
     freight        DECIMAL(10, 2) NULL, 
     shipname       VARCHAR (40) NULL, 
     shipaddress    VARCHAR (60) NULL, 
     shipcity       VARCHAR (15) NULL, 
     shipregion     VARCHAR (15) NULL, 
     shippostalcode VARCHAR (10) NULL, 
     shipcountry    VARCHAR (15) NULL, 
     PRIMARY KEY ( orderid ) 
  ); 

DROP TABLE IF EXISTS OrderDetail;
CREATE TABLE OrderDetail 
  ( 
     orderid   INT NOT NULL, 
     productid INT NOT NULL, 
     unitprice DECIMAL(10, 2) NOT NULL, 
     qty       SMALLINT NOT NULL, 
     discount  DECIMAL(10, 2) NOT NULL 
  );

