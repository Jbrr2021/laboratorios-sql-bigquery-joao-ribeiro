-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Filtragem por Intervalo Temporal com Operador BETWEEN
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Preciso de um relatório focado apenas nos gastos que aconteceram na segunda quinzena 
-- do mês de maio de 2026 (ou seja, entre os dias 15 e 30 de maio). Quero ver a data do uso, 
-- o nome do serviço e o valor gasto, ordenados de forma cronológica crescente (da data 
-- mais antiga para a mais recente) para analisar a evolução da reta final do mês."
-- =================================================================================

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
