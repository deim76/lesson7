# Выведите список товаров products и разделов catalogs, который соответствует товару

# 1 вариант
SELECT (SELECT name FROM catalogs WHERE id=catalog_id) as catalog, name FROM products Group by catalog, name; 

# 2 вариант
SELECT
  catalog.name,
  product.name
FROM
  catalogs AS catalog
JOIN
  products AS product
WHERE
  catalog.id = product.catalog_id;



