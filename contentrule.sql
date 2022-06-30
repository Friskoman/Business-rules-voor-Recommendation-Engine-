 SELECT products.id,products.name , products.category_id , products.sub_category_id, products.sub_sub_category_id,
        products.gender_id,products.herhaalaankopen,products.price_discount FROM (
    SELECT id, category_id, sub_category_id, sub_sub_category_id, gender_id FROM products
    WHERE products.id = '2154'
) AS x
JOIN products on products.category_id = x.category_id
    AND products.sub_category_id = x.sub_category_id
    AND products.sub_sub_category_id = x.sub_sub_category_id
    OR products.gender_id IS NULL
    AND products.gender_id = x.gender_id 
WHERE products.herhaalaankopen = true
    AND NOT price_discount = 0
