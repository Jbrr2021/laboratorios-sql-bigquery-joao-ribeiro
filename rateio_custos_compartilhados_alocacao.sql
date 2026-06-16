-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / CAPÍTULO 4: A LINGUAGEM DE FINOPS
-- CONCEITO: Alocação de Custos Compartilhados (Shared Costs)
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "O nosso serviço de Cloud Storage (Armazenamento) é um custo compartilhado centralizado 
-- entre diferentes projetos. Preciso que você crie uma consulta que isole apenas as linhas 
-- desse serviço específico, exiba o valor original gasto e calcule uma nova coluna simulando 
-- o rateio meio a meio (50%) desse custo mãe para sabermos quanto cobrar de cada equipe."
-- =================================================================================

SELECT 
  nome_servico,
  valor_gasto,
  valor_gasto / 2 AS metade_rateio
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  nome_servico = 'Cloud Storage';
