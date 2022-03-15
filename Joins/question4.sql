-- How can you output a list of all members, including the individual who recommended them (if any)? Ensure that results are ordered by (surname, firstname).

select mems.firstname as memfname, mems.surname as memsname, recs.firstname as recfname, recs.surname as recsname
	from 
		cd.members mems
		left outer join cd.members recs
			on recs.memid = mems.recommendedby
order by memsname, memfname; 