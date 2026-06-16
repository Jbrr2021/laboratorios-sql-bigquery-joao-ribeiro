-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Detalhamento de Registros e Identificação de Anomalias de Custo
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "O time financeiro notou uma variação atípica nos gastos com processamento de dados. 
-- Preciso que você audite a tabela e filtre todas as cobranças do serviço 'BigQuery' 
-- cujos custos individuais de uso tenham ultrapassado a nossa linha de corte média 
-- estipulada de R$ 130,14. Traga a data, o serviço, o tipo de recurso e o valor gasto."
-- =================================================================================

SELECT 
  data_uso, 
  nome_servico, 
  tipo_recurso, 
  valor_gasto
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  nome_servico = 'BigQuery' 
  AND valor_gasto > 130.14;
