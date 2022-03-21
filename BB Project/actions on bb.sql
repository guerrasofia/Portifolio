--Couting itens 
SELECT COUNT(*) FROM bb

--Selecting more specific data
SELECT * FROM bb WHERE Country= 'Australia'

SELECT COUNT(Country)
FROM bb
WHERE country='Australia';

--How to delete data from table
DELETE FROM bb
WHERE country='NA'; 

--To clean duplicates
DELETE FROM bb
WHERE 
	imdb_id IN (
	SELECT 
		imdb_id_corrigido
	FROM (
		SELECT 
			imdb_id_corrigido,
			ROW_NUMBER() OVER (
				PARTITION BY imdb_id_corrigido
				ORDER BY imdb_id_corrigido) AS row_num
		FROM 
			bb
		
	) t
    WHERE row_num > 1
);

--Before join
alter table bb
add foreign key (column)
references table(column);

--Join (not working yet)
select bb.localizador , list_country.phoneCode 
from bb join list_country
on list_country.phoneCode = bb.localizador;