-- How can you produce a list of the start times for bookings by members named 'David Farrell'? 

select starttime from cd.bookings
	INNER JOIN cd.members 
    	ON members.memid = bookings.memid
			where members.firstname = 'David' and
			members.surname = 'Farrell';