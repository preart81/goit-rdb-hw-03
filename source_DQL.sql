-- Завдання 1.1
-- вибрати всі стовпчики (За допомогою wildcard “*”) з таблиці products
SELECT
  *
FROM
  topic_3.products;

-- Завдання 1.2
-- вибрати тільки стовпчики name, phone з таблиці shippers
SELECT
    name, phone
FROM
    topic_3.shippers;

-- Завдання 2
-- середнє, максимальне та мінімальне значення стовпчика price таблички products
SELECT
    AVG(price), MAX(price), min(price)
FROM
    topic_3.products;

-- Завдання 3
-- унікальні значення колонок category_id та price таблиці products
SELECT DISTINCT
    category_id, price
FROM
    topic_3.products
ORDER BY price DESC
LIMIT 10;

-- Завдання 4
-- кількість продуктів (рядків), які знаходиться в цінових межах від 20 до 100
SELECT DISTINCT
    COUNT(*)
FROM
    topic_3.products
WHERE
    price BETWEEN 20 AND 100
;

-- Завдання 5
-- кількість продуктів (рядків) та середню ціну (price) у кожного постачальника (supplier_id)
SELECT DISTINCT
    supplier_id, COUNT(id), AVG(price)
FROM
    topic_3.products
GROUP BY supplier_id
;