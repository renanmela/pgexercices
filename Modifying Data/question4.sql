-- We made a mistake when entering the data for the second tennis court. The initial outlay was 10000 rather than 8000: you need to alter the data to fix the error.

update cd.facilities
set initialoutlay = 10000
where facid = 1;