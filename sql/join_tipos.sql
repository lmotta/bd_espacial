-- Ver os valores dos domínios
select *
from 
  -- dominios.instituicao
  -- dominios.revestimento
  -- dominios.jurisdicao

-- Cross Join(“Produto Cartesiano”)
select i.*, r.*
from dominios.instituicao as i, dominios.revestimento as r

-- Column-name Join
select i.*, r.*
from dominios.instituicao as i
Join dominios.revestimento as r Using(code)

-- Natural Join 
select i.*, j.*
from dominios.instituicao as i
Natural Join dominios.jurisdicao as j

