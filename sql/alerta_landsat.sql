SELECT a.*
FROM ibama.alerta AS a, ibama.img_catalogo_landsat_a AS l
WHERE 
 a.objectid = 1792415 AND ST_Intersects(a.geom, l.geom)
