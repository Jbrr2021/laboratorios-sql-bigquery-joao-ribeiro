-- CONCEITO: Alocação de custos macros utilizando filtros e agregadores (Fase de Informar)
-- OBJETIVO: Mapear qual equipe consome mais recursos financeiros em ambiente de testes/desenvolvimento

SELECT 
  equipe,
  SUM(valor_gasto) AS total_gastos,
  COUNT(*) AS quantidade
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  ambiente = 'Desenvolvimento'
GROUP BY 
  equipe;
