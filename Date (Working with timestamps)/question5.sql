-- Get the day of the month from the timestamp '2012-08-31' as an integer.

select extract(epoch from (timestamp '2012-09-02' - '2012-08-31 01:00:00'));

/* OU (versão com maior portabilidade)

select 	extract(day from ts.int)*60*60*24 +
	extract(hour from ts.int)*60*60 + 
	extract(minute from ts.int)*60 +
	extract(second from ts.int)
	from
		(select timestamp '2012-09-02 00:00:00' - '2012-08-31 01:00:00' as int) ts
*/