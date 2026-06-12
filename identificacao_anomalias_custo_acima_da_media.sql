-- CONCEITO: Detalhamento de registros com múltiplos critérios restritivos (Fase de Informar)
-- OBJETIVO: Filtrar um serviço específico cujos gastos individuais ultrapassaram a linha de corte/média estabelecida

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
