-- How can you produce a list of facilities, with each labelled as 'cheap' or 'expensive' depending on if their monthly maintenance cost is more than $100? Return the name and monthly maintenance of the facilities in question.

select name,
		case when (monthlymaintenance < 100)
		then 'cheap'
		else 'expensive'
		end as cost
		from cd.facilities
