Задача 1.
Вывести заказы со стоимостью от 5000 и более EUR (проекция: номер_заказа, стоимость_заказа)

SELECT
Products.Price,
Orders.OrderID
FROM Orders
JOIN OrderDetails ON OrderDetails.OrderID = Orders.OrderID
JOIN Products ON OrderDetails.ProductID = Products.ProductID
GROUP BY Orders.OrderID
HAVING SUM(Products.Price) >= 5000

Задача 2.
Вывести страны, в которые было отправлено 3 и более заказов

SELECT
    Customers.Country,
    COUNT(*) AS total_orders
FROM Orders
JOIN Customers ON Orders.CustomerID = Customers.CustomerID
GROUP BY Customers.Country
HAVING COUNT(*) >= 3;

Задача 3.
Вывести ТОП-10 самых продаваемых товаров (проекция: название_товара, ко_во_проданных_единиц)

Задача 4.
Расчитать З/П менеджеров (ставка - 5% от суммы проданных заказов)