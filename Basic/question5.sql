--How can you produce a list of all facilities with the word 'Tennis' in their name? 

select * from cd.facilities
where name LIKE '%Tennis%';