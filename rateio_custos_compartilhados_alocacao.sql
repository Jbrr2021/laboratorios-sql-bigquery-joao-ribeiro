-- CONCEITO: Alocação de Custos Compartilhados (Shared Costs) - Capítulo 4 de FinOps
-- OBJETIVO: Simular o rateio meio a meio (50%) de um serviço centralizado utilizando operadores matemáticos no SELECT

SELECT 
  nome_servico,
  valor_gasto,
  valor_gasto / 2 AS metade_rateio
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  nome_servico = 'Cloud Storage';
