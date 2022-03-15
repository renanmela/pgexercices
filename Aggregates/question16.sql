-- Produce a monotonically increasing numbered list of members (including guests), ordered by their date of joining. Remember that member IDs are not guaranteed to be sequential.

select row_number() over(order by joindate), firstname, surname
	from cd.members
order by joindate 