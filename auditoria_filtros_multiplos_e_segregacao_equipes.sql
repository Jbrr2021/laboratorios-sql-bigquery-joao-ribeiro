-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Precedência de Operadores Lógicos e Segregação de Equipes com Parênteses
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Preciso de um relatório cirúrgico para a diretoria financeira focado exclusivamente nas 
-- equipes de Engenharia e BI. Quero auditar quais recursos dessas áreas rodaram especificamente 
-- no ambiente de 'Produção' e que, individualmente, registraram um gasto maior do que R$ 50,00. 
-- Traga o nome do serviço, equipe, projeto e o valor gasto, ordenando do maior para o menor."
-- =================================================================================

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
