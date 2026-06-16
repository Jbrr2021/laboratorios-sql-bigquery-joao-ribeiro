-- =================================================================================
-- ENGENHARIA DE DADOS / ESTRUTURAS CONDICIONAIS E REGRAS DE NEGÓCIO
-- CONCEITO: Criação de Faixas de Alerta Orçamentário com a Cláusula CASE WHEN
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Preciso de uma regra visual automatizada para ajudar o time financeiro a priorizar 
-- ações de contenção. Crie uma coluna chamada 'status_orcamento'. Recursos com gasto 
-- maior que R$ 300 devem ser rotulados como '🔴 CRÍTICO - Alerta Vermelho'; gastos entre 
-- R$ 100 e R$ 300 como '🟡 ATENÇÃO - Monitorar'; e menores que R$ 100 como 
-- '🟢 DENTRO DO ESPERADO'. Ordene o relatório do maior custo para o menor."
-- =================================================================================

SELECT
  nome_servico,
  projeto,
  valor_gasto,
CASE 
  WHEN valor_gasto > 300.00 THEN '🔴 CRÍTICO - Alerta Vermelho'
  WHEN valor_gasto >= 100.00 AND valor_gasto <= 300.00 THEN '🟡 ATENÇÃO - Monitorar'
  ELSE '🟢 DENTRO DO ESPERADO'
END AS status_orcamento
FROM
  `meu_finops.custos_nuvem_teste`
ORDER BY
  valor_gasto DESC;
