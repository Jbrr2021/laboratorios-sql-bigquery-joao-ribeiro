-- CONCEITO: Projeção de Margem / Markup (Linguagem de FinOps - Capítulo 4)
-- OBJETIVO: Aplicar uma taxa de governança de 10% nos custos de Produção, ordenando do maior para o menor custo com tratamento de arredondamento ROUND

SELECT 
  nome_servico,
  valor_gasto,
  ROUND(valor_gasto * 1.10, 2) AS custo_com_taxa
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  ambiente = 'Produção'
ORDER BY 
  custo_com_taxa DESC;
