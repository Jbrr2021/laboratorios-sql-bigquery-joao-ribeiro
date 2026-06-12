-- CONCEITO: Uso avançado de parênteses para isolar condições OR dentro de múltiplos AND (Fase de Informar)
-- OBJETIVO: Filtrar recursos de Produção com teto mínimo de gastos focado exclusivamente nas equipes de Engenharia e BI, com ordenação decrescente

SELECT 
  nome_servico,
  equipe,
  projeto,
  valor_gasto
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  ambiente = 'Produção' 
  AND valor_gasto > 50.00 
  AND (equipe = 'Engenharia' OR equipe = 'BI')
ORDER BY 
  valor_gasto DESC;
