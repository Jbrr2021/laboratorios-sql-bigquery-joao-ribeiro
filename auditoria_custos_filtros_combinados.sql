-- CONCEPT: Uso de operadores lógicos combinados (AND/OR) com precedência
-- PURPOSE: Filtrar cenários específicos de infraestrutura e governança (Fase de Informar)

SELECT 
  data_uso, nome_servico, tipo_recurso, ambiente, valor_gasto
FROM 
  `meu_finops.custos_nuvem_teste`
WHERE 
  nome_servico = 'Cloud Storage' AND data_uso = '2026-05-28' 
  OR tipo_recurso = 'Banco de Dados Relacional';
