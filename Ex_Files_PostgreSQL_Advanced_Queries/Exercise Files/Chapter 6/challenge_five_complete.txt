select person_id,
	name,
	height_inches,
	lag(name, 1) over (order by height_inches) as "is taller than",
	height_inches - lag(height_inches, 1) over (order by height_inches)
		as "by this many inches"
from public.people_heights
order by height_inches desc;