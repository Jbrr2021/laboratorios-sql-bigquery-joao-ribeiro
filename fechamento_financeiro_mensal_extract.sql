-- CONCEITO: Consolidação e agregação macro utilizando funções de extração de data EXTRACT
-- OBJETIVO: Gerar o custo total e a média de gastos agrupados por mês analítico para relatórios gerenciais executivos

SELECT
  EXTRACT(MONTH FROM data_uso) AS mes_analise,
  SUM(valor_gasto) AS custo_total,
  ROUND(AVG(valor_gasto), 2) AS media_gasto
FROM
  `meu_finops.custos_nuvem_teste`
GROUP BY
  mes_analise;
