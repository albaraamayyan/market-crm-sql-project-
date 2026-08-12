-- 1. إنشاء جدول فرعي للعملاء ذوي القيمة العالية (VIP Customers) بناءً على شرط معين
CREATE TABLE VIP_Customers AS 
SELECT * FROM Customers 
WHERE Country = 'Saudi Arabia';

-- 2. استعراض أسماء المنتجات التي تبدأ بحرف 'S'
SELECT ProductName 
FROM Products 
WHERE ProductName LIKE 'S%';

-- 3. استعراض المنتجات التي تحتوي أسمائها على 5 أحرف بالضبط
SELECT ProductName 
FROM Products 
WHERE ProductName LIKE '_____';

-- 4. تطبيق الدوال التجميعية (Aggregate Functions) على أسعار المنتجات مع تسمية واضحة
SELECT 
    AVG(Price) AS Average_Price, 
    MAX(Price) AS Highest_Price, 
    MIN(Price) AS Lowest_Price 
FROM Products;

-- 5. حصر وعرض المنتجات في تصنيف محدد (Electronics) وسعرها يساوي أو يفوق سعراً معيناً
SELECT ProductName 
FROM Products 
WHERE Category = 'Electronics' AND Price >= 1000;

-- 6. عرض الطلبات التي تمت خلال نطاق تاريخي محدد (Between Dates)
SELECT * 
FROM Orders 
WHERE OrderDate BETWEEN '2026-01-01' AND '2026-06-30';

-- 7. حساب إجمالي عدد الطلبات في النظام
SELECT COUNT(*) AS Total_Orders 
FROM Orders;

-- 8. استعراض دول العملاء المختلفة بدون تكرار (Distinct)
SELECT DISTINCT Country 
FROM Customers;

-- 9. عرض أسماء المنتجات بالأحرف الكبيرة (Uppercase) لأجل التقارير الرسمية
SELECT UPPER(ProductName) AS Upper_ProductName 
FROM Products;

-- 10. حساب التقريب الرياضي لمتوسط الأسعار لأقرب رقم أصغر (Numeric Functions - FLOOR)
SELECT FLOOR(AVG(Price)) AS Rounded_Down_Avg_Price 
FROM Products;

-- 11. توحيد صيغة عرض الجنس (Gender) من اختصار إلى نص كامل (String Functions - REPLACE)
SELECT 
    CustomerName, 
    REPLACE(REPLACE(Gender, 'M', 'Male'), 'F', 'Female') AS Formatted_Gender 
FROM Customers;

-- 12. تحديث وتخفيض أسعار المنتجات التي تنخفض كميتها في المخزون عن حد معين (Update & Condition)
UPDATE Products 
SET Price = Price - 50 
WHERE StockQuantity < 5;
