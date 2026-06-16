-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE OTIMIZAÇÃO (Optimize)
-- CONCEITO: Filtragem Pós-Agregação com Cláusula HAVING
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "O time de finanças reportou que o custo total de maio ultrapassou as expectativas. 
-- Para uma ação rápida de contenção, preciso de um relatório focado em identificar quais 
-- projetos específicos e suas respectivas equipes estão estourando o orçamento. 
-- Filtre e exiba APENAS os projetos cujo custo total somado acumulado tenha sido MAIOR 
-- do que R$ 300,00, ordenando do maior gasto para o menor para priorizarmos a atuação."
-- =================================================================================

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
