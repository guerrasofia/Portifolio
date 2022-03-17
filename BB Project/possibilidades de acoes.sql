SELECT * FROM bb_country_length WHERE Country= 'Australia'

SELECT COUNT(Country)
FROM bb_country_length
WHERE country='Australia';

--Tive que apagar os com country NA para facilitar minha vida kk
DELETE FROM bb_country_length
WHERE country='NA'; 

--Para limpar duplicatas
DELETE FROM bb_country_length 
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
			bb_country_length
		
	) t
    WHERE row_num > 1
);


--JOIN
alter table bb_country_length
add foreign key (CodigoPais)
references lista_paises(CountryCode);