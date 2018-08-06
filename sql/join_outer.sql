-- Obs:
--- Totais de registros: revestimento = 6 e instituicao = 7

-- Left Join(total = 6)
SELECT r.*, i.*
FROM dominios.revestimento AS r
LEFT JOIN dominios.instituicao i
  ON r.code = i.code

---- Como obter os códigos que estão no 'r' e NÃO existe em 'i' ?

-- Right Join(total = 7)
SELECT r.*, i.*
FROM dominios.revestimento AS r
RIGHT JOIN dominios.instituicao i
  ON r.code = i.code

-- Full Join(Total = 10)
SELECT r.*, i.*
FROM dominios.revestimento AS r
FULL JOIN dominios.instituicao i
  ON r.code = i.code
