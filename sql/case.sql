SELECT id,
 CASE revestimento
      WHEN 0 THEN '1)Desconhecido'
      WHEN 1 THEN '2)Leito natural'
      WHEN 2 THEN '3)Revestimento primário'
      WHEN 3 THEN '4)Pavimentado'
      WHEN 4 THEN '5)Calçado'
      WHEN 5 THEN '6)Sem informação'
      ELSE '0)Algo estranho??'
 END AS "Tipo de Revestimento",
 geom
FROM cb.tra_trecho_rodoviario_l
LIMIT 100
