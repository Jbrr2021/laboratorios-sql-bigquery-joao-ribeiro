-- =================================================================================
-- ENGENHARIA DE DADOS / HIGIENIZAÇÃO E GOVERNANÇA DE STRINGS
-- CONCEITO: Tratamento de Nulos (COALESCE) e Padronização de Caixa (UPPER)
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Identificamos falhas de padronização em sistemas legados. Os nomes dos projetos 
-- vieram sem padrão de letras e alguns recursos antigos não possuem equipe vinculada (NULL). 
-- Crie uma consulta que force todos os projetos para LETRAS MAIÚSCULAS e substitua os 
-- valores nulos de equipe pelo texto padrão 'Sem Equipe', ordenando pelos maiores custos."
-- =================================================================================

SELECT 
  nome_servico,
  UPPER(projeto) AS projeto_padronizado,
  COALESCE(equipe, 'Sem Equipe') AS equipe_tratada,
  valor_gasto
FROM 
  `meu_finops.custos_nuvem_teste`
ORDER BY 
  valor_gasto DESC;
