-- 1. جدول العملاء (Customers)
-- يحتوي على بيانات العميل الأساسية وتاريخ تسجيله في النظام
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    Email VARCHAR(100),
    Country VARCHAR(50),
    Gender VARCHAR(10),
    RegistrationDate DATE
);

-- 2. جدول المنتجات (Products)
-- يحتوي على بيانات المنتجات، تصنيفاتها، أسعارها، وكمياتها في المخزون
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT
);

-- 3. جدول الطلبات (Orders)
-- يربط بين العملاء والمنتجات لتسجيل عمليات البيع، ويحتوي على تاريخ الطلب
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    QuantitySold INT,
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
