select category_id, product_name, size, price,
	max(price) over(w),
	min(price) over(w),
	avg(price) over(w),
	count(*) over(w)
from inventory.products
window w as (partition by category_id, size)
order by category_id, product_name, size;