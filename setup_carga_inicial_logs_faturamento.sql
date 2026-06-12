-- CONCEITO: Modelagem lógica e carga física de dados estruturados (DDL/DML)
-- OBJETIVO: Criar do zero e enriquecer a tabela de custos de nuvem com dimensões de ambiente, equipe e projeto

CREATE OR REPLACE TABLE `meu_finops.custos_nuvem_teste` AS
-- Dados antigos atualizados
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Sênior' AS tipo_recurso, DATE('2026-05-01') AS data_uso, 150.50 AS valor_gasto, 'Produção' AS ambiente, 'Engenharia' AS equipe, 'App Vendas' AS projeto UNION ALL
SELECT 'Cloud Storage' AS nome_servico, 'Armazenamento Padrão' AS tipo_recurso, DATE('2026-05-01') AS data_uso, 25.00 AS valor_gasto, 'Produção' AS ambiente, 'BI' AS equipe, 'Data Lake' AS projeto UNION ALL
SELECT 'BigQuery' AS nome_servico, 'Processamento de Queries' AS tipo_recurso, DATE('2026-05-02') AS data_uso, 340.20 AS valor_gasto, 'Produção' AS ambiente, 'BI' AS equipe, 'Data Lake' AS projeto UNION ALL
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Júnior' AS tipo_recurso, DATE('2026-05-02') AS data_uso, 45.10 AS valor_gasto, 'Desenvolvimento' AS ambiente, 'Engenharia' AS equipe, 'App Vendas' AS projeto UNION ALL
SELECT 'Cloud SQL' AS nome_servico, 'Banco de Dados Relacional' AS tipo_recurso, DATE('2026-05-03') AS data_uso, 89.90 AS valor_gasto, 'Produção' AS ambiente, 'Engenharia' AS equipe, 'App Vendas' AS projeto UNION ALL

-- Novos dados adicionados para expandir nossa análise (Mês de Maio completo)
SELECT 'BigQuery' AS nome_servico, 'Armazenamento de Dados' AS tipo_recurso, DATE('2026-05-10') AS data_uso, 12.00 AS valor_gasto, 'Produção' AS ambiente, 'BI' AS equipe, 'Data Lake' AS projeto UNION ALL
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Sênior' AS tipo_recurso, DATE('2026-05-15') AS data_uso, 150.50 AS valor_gasto, 'Produção' AS ambiente, 'Engenharia' AS equipe, 'App Vendas' AS projeto UNION ALL
SELECT 'Vertex AI' AS nome_servico, 'Treinamento de Modelo IA' AS tipo_recurso, DATE('2026-05-18') AS data_uso, 520.00 AS valor_gasto, 'Desenvolvimento' AS ambiente, 'Ciência de Dados' AS equipe, 'Recomendador' AS projeto UNION ALL
SELECT 'Cloud SQL' AS nome_servico, 'Banco de Dados Relacional' AS tipo_recurso, DATE('2026-05-20') AS data_uso, 89.90 AS valor_gasto, 'Produção' AS ambiente, 'Engenharia' AS equipe, 'App Vendas' AS projeto UNION ALL
SELECT 'Vertex AI' AS nome_servico, 'Previsão de Churn' AS tipo_recurso, DATE('2026-05-25') AS data_uso, 410.00 AS valor_gasto, 'Produção' AS ambiente, 'Ciência de Dados' AS equipe, 'Previsão Churn' AS projeto UNION ALL
SELECT 'Cloud Storage' AS nome_servico, 'Coldline Storage (Backup)' AS tipo_recurso, DATE('2026-05-28') AS data_uso, 5.50 AS valor_gasto, 'Produção' AS ambiente, 'Engenharia' AS equipe, 'Backups Gerais' AS projeto UNION ALL
SELECT 'Compute Engine' AS nome_servico, 'Instância VM Júnior' AS tipo_recurso, DATE('2026-05-30') AS data_uso, 45.10 AS valor_gasto, 'Desenvolvimento' AS ambiente, 'Marketing' AS equipe, 'Landing Page' AS projeto;
