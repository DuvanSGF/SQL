EXPLAIN Select username from public.users

-- DATOS DE LA BASES DE datos
select * from pg_database

-- show directories
SHOW data_directory;

-- 
EXPLAIN Select * from pg_class;

--
EXPLAIN ANALYZE SELECT username FROM public.users

-- Working with index
CREATE INDEX users_username_idx ON users(username);
--DROP INDEX users_username_idx;

--Tamaño Objetos
SELECT pg_size_pretty(pg_relation_size('users'));
SELECT pg_size_pretty(pg_relation_size('users_username_idx	'));


Select id, username, phone from public.users u
where u.id = 10 or u.phone = '8265308557'

Select * from public.followers


--
Select * from pg_class	

Select * from bt_metap('users_username_idx');

--With Recursive
WITH RECURSIVE countDown(VAL) as (
	Select 10 as VAL --Initial, Non-recursive query
	UNION 
	Select VAL -1 from countDown WHERE VAL > 1 --Recursive Query
	)
Select * from countDown;
)

-- Problem with other perspective
Select * from public.pgmigrations



SHOW search_path;
