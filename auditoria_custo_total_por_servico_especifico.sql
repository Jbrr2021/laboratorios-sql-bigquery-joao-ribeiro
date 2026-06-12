-- CONCEITO: Consolidação financeira de um serviço isolado em nuvem
-- OBJETIVO: Responder rapidamente o gasto total e volumetria de um provedor específico (Ex: Compute Engine)

SELECT 
  nome_servico,
  SUM(valor_gasto) AS total_gastos,
  COUNT(*) AS quantidade
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  nome_servico = 'Compute Engine'
GROUP BY 
  nome_servico;
