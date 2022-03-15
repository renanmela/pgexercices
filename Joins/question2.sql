-- How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? Return a list of start time and facility name pairings, ordered by the time. 

select bks.starttime as start, fac.name from cd.bookings bks
	INNER JOIN cd.facilities fac 
    	ON fac.facid = bks.facid
			where fac.name in ('Tennis Court 2','Tennis Court 1') and
		bks.starttime >= '2012-09-21' and
		bks.starttime < '2012-09-22'
	order by bks.starttime;