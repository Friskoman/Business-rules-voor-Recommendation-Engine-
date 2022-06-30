select x.viewed_products, x.profile_id from (
    select viewed_products, session_id, profile_id from viewed_products_session
    where profile_id = '59dce306a56ac6edb4c12838'
    ) as x
join ordered_products on x.session_id = ordered_products.session_id 
and ordered_products.product_id <> x.viewed_products
