SELECT t.id, r.code_name AS "revestimento", geom
FROM cb.tra_trecho_rodoviario_l  AS t
INNER JOIN dominios.revestimento AS r
  ON t.revestimento = r.code
LIMIT 100
