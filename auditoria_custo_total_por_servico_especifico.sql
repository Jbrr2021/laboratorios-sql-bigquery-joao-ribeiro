-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Consolidação Financeira e Volumetria de Serviço Isolado
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Estamos revisando nossos maiores contratos de infraestrutura e preciso de uma métrica 
-- rápida sobre as nossas instâncias de servidores virtuais. Crie uma consulta focada 
-- exclusivamente no serviço 'Compute Engine'. Quero ver o nome do serviço, a soma 
-- total do valor gasto com ele e a quantidade total de vezes (volumetria de linhas) 
-- que ele foi cobrado na nossa tabela."
-- =================================================================================
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
