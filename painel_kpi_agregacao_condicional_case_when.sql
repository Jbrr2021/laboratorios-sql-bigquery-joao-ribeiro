-- =================================================================================
-- ENGENHARIA DE DADOS / AGREGAÇÃO CONDICIONAL (PIVOT PARCIAL)
-- CONCEITO: Consolidação de Métricas e KPIs utilizando CASE WHEN dentro de COUNT/SUM
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "A diretoria precisa de uma linha única de resumo gerencial sobre a saúde financeira 
-- da nossa nuvem. Crie um relatório consolidando: 1) A quantidade total de recursos 
-- na faixa Crítica (Alerta Vermelho > R$ 300); 2) A quantidade total de recursos na 
-- faixa de Atenção (entre R$ 100 e R$ 300); 3) A soma exata do valor gasto apenas 
-- pelas contas que estão na faixa Crítica."
-- =================================================================================

SELECT 
  COUNT(CASE WHEN valor_gasto > 300.00 THEN 1 END) AS qtd_alerta_vermelho,
  COUNT(CASE WHEN valor_gasto >= 100.00 AND valor_gasto <= 300.00 THEN 1 END) AS qtd_atencao,
  SUM(CASE WHEN valor_gasto > 300.00 THEN valor_gasto ELSE 0 END) AS custo_total_critico
FROM 
  `meu_finops.custos_nuvem_teste`;
