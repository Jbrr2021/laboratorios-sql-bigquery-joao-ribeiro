-- CONCEITO: Filtragem por janelas de tempo utilizando BETWEEN (Fase de Informar)
-- OBJETIVO: Extrair e ordenar de forma cronológica crescente os custos de nuvem ocorridos na segunda quinzena do mês

SELECT
  data_uso,
  nome_servico,
  valor_gasto
FROM
  `meu_finops.custos_nuvem_teste`
WHERE
  data_uso 
  BETWEEN '2026-05-15' AND '2026-05-30'
ORDER BY
  data_uso ASC;
