-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Alocação de Custos Macros e Mapeamento de Centros de Custo (Equipes)
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Para planejarmos o orçamento do próximo trimestre, preciso entender como estão divididos 
-- os gastos com inovação e testes. Crie uma consulta focada exclusivamente no ambiente de 
-- 'Desenvolvimento'. Quero ver o nome de cada equipe, a soma total que ela gastou e a 
-- quantidade de recursos que ela possui ativos nesse ambiente. Ordene o resultado para 
-- mostrar quem consumiu mais no topo."
-- =================================================================================

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
