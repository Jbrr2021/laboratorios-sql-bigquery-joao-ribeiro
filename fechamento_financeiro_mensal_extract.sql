-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Consolidação Periódica e Extração de Componentes de Data (EXTRACT)
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Preciso de um relatório macro mensal para apresentar à diretoria. Quero saber qual foi 
-- o gasto total acumulado e o gasto médio por recurso focado exclusivamente no mês de maio. 
-- Não quero ver os dias separados; preciso de apenas uma linha consolidada mostrando a soma 
-- total e a média ponderada (com duas casas decimais) daquele período completo."
-- =================================================================================

SELECT
  EXTRACT(MONTH FROM data_uso) AS mes_analise,
  SUM(valor_gasto) AS custo_total,
  ROUND(AVG(valor_gasto), 2) AS media_gasto
FROM
  `meu_finops.custos_nuvem_teste`
GROUP BY
  mes_analise;
