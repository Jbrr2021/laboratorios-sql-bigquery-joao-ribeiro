-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / CAPÍTULO 4: A LINGUAGEM DE FINOPS
-- CONCEITO: Projeção de Margem / Markup de Governança
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Preciso de um relatório focado apenas nos recursos do ambiente de Produção. Para cada 
-- recurso, quero ver o nome_servico e o valor_gasto original. Mas também preciso que você 
-- calcule uma nova coluna aplicando uma taxa de governança de 10% (Markup) em cima do 
-- valor original. No final, ordene o relatório para mostrar o maior custo com taxa no topo."
-- =================================================================================
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
