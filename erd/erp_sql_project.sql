
-- Demo_ERP
CREATE TABLE Clients (
  ClientID INT PRIMARY KEY,
  ClientName NVARCHAR(255),
  Phone NVARCHAR(50),
  Email NVARCHAR(255),
  Address NVARCHAR(255),
  CreatedAt DATETIME
);

CREATE TABLE Agents (
  AgentID INT PRIMARY KEY,
  AgentName NVARCHAR(255),
  Email NVARCHAR(255),
  Phone NVARCHAR(50),
  Region NVARCHAR(100)
);

CREATE TABLE Products (
  ProductID INT PRIMARY KEY,
  ProductName NVARCHAR(255),
  Category NVARCHAR(100),
  Price DECIMAL(10, 2),
  StockQty INT
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  ClientID INT,
  OrderDate DATE,
  TotalAmount DECIMAL(18, 2),
  Status NVARCHAR(50),
  FOREIGN KEY (ClientID) REFERENCES Clients(ClientID)
);

CREATE TABLE OrderDetails (
  OrderDetailID INT PRIMARY KEY,
  OrderID INT,
  ProductID INT,
  Quantity INT,
  UnitPrice DECIMAL(10, 2),
  FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
  FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- DEMO_Integration (Views simulated as tables for diagramming)
CREATE TABLE vw_Clients_Clean (
  ClientID INT,
  ClientName NVARCHAR(255),
  Phone NVARCHAR(50),
  Email NVARCHAR(255),
  Address NVARCHAR(255)
);

CREATE TABLE vw_Orders_Enriched (
  OrderID INT,
  ClientName NVARCHAR(255),
  Region NVARCHAR(100),
  OrderDate DATE,
  TotalAmount DECIMAL(18, 2),
  Status NVARCHAR(50)
);

CREATE TABLE vw_ProductSales (
  ProductID INT,
  ProductName NVARCHAR(255),
  TotalSold INT,
  Revenue DECIMAL(18, 2)
);

CREATE TABLE vw_ProductInventory (
  ProductID INT,
  ProductName NVARCHAR(255),
  StockQty INT,
  TotalOrdered INT,
  AvailableStock INT
);

-- DEMO
CREATE TABLE Clients_DEMO (
  ClientID INT PRIMARY KEY,
  ClientName NVARCHAR(255),
  Phone NVARCHAR(50),
  Email NVARCHAR(255),
  Address NVARCHAR(255)
);

CREATE TABLE ProductSales (
  ProductID INT PRIMARY KEY,
  ProductName NVARCHAR(255),
  TotalSold INT,
  Revenue DECIMAL(18, 2)
);

CREATE TABLE ClientOrderSummary (
  ClientID INT PRIMARY KEY,
  TotalOrders INT,
  TotalSpent DECIMAL(18, 2)
);
