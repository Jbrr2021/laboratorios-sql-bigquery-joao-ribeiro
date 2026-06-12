-- CONCEITO: Filtragem de valores agregados utilizando a cláusula HAVING (Fase de Otimização)
-- OBJETIVO: Identificar quais projetos acumulados ultrapassaram o teto orçamentário de R$ 300,00, ordenando do maior para o menor impacto financeiro

SELECT
  projeto,
  equipe,
  SUM(valor_gasto) AS custo_total_projeto
FROM
  `meu_finops.custos_nuvem_teste`
GROUP BY
  projeto,
  equipe
HAVING
  SUM(valor_gasto) > 300.00
ORDER BY
  custo_total_projeto DESC;
