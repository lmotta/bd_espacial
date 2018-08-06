SELECT a.objectid, a.geom
FROM
(
	SELECT a.objectid, a.geom
	FROM ibama.alerta a
	JOIN
	(
	SELECT ST_Buffer( ST_Transform(geom, 29100), 10000 ) as geom-- 10KM
	FROM cb.loc_cidade_p
	WHERE nome = 'Sinop'
	)s
	ON
	 s.geom &&  ST_Transform( a.geom,  29100 )
)a,
(
	SELECT geom
	FROM cb.loc_cidade_p
	WHERE nome = 'Sinop'
)s
ORDER BY St_Distance ( a.geom,s.geom )

