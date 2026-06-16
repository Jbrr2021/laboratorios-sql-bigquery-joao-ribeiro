-- =================================================================================
-- FRAMEWORK CLOUD FINOPS - PARTE 1 / FASE DE INFORMAR (Inform)
-- CONCEITO: Uso de Operadores Lógicos Combinados (AND / OR) com Precedência
--
-- CONTEXTO DE NEGÓCIO (Pedido do Gestor):
-- "Preciso auditar dois cenários específicos de custos na nossa base de dados. 
-- Extraia um relatório que nos mostre todas as cobranças que sejam do serviço 
-- 'Cloud Storage' ocorridas especificamente no dia '2026-05-28', OU traga também 
-- qualquer registro que pertença ao tipo de recurso 'Banco de Dados Relacional', 
-- independente da data. Quero ver a data, o serviço, o recurso, o ambiente e o valor."
-- =================================================================================
SELECT 
  data_uso, nome_servico, tipo_recurso, ambiente, valor_gasto
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  nome_servico = 'Cloud Storage' AND data_uso = '2026-05-28' 
  OR tipo_recurso = 'Banco de Dados Relacional';
