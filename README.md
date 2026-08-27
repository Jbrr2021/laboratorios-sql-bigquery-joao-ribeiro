# 🗂️ Minha Biblioteca Pessoal de Engenharia de Dados & Cloud FinOps

![Google Cloud](https://img.shields.io/badge/Google_Cloud-BigQuery-4285F4?style=flat&logo=googlecloud&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Analytics_&_DML-CC292B?style=flat&logo=mysql&logoColor=white)
![FinOps](https://img.shields.io/badge/Framework-Cloud_FinOps-00C49F?style=flat)
![BigQuery Sandbox](https://img.shields.io/badge/Environment-GCP_Sandbox-orange?style=flat)

<img width="100%" alt="Interface BigQuery FinOps" src="https://github.com/user-attachments/assets/39ad0f6a-b6ed-4ce2-adbb-cb7f412f0fd1" />

Biblioteca prática de **consultas analíticas e modelagem em SQL** desenvolvida diretamente no **Google BigQuery Sandbox**. 

O objetivo do projeto é conectar o framework **Cloud FinOps** (gestão e governança financeira em nuvem) à manipulação avançada de dados, solucionando dores reais de negócio através de cenários simulados de faturamento (*Billing Data*).

---

## 📊 Arquitetura e Modelagem dos Dados (`meu_finops`)

Para dar suporte aos casos de uso, estruturei a tabela analítica `custos_nuvem_teste` com dimensões essenciais para auditoria e governança:

| Coluna | Tipo | Descrição de Negócio |
| :--- | :--- | :--- |
| `data_registro` | `DATE` | Data de competência do consumo do serviço |
| `servico` | `STRING` | Recurso em nuvem (*Compute Engine*, *BigQuery*, *Cloud Storage*) |
| `ambiente` | `STRING` | Segregação de ambiente (`Producao` / `Desenvolvimento`) |
| `equipe` | `STRING` | Time responsável pelo consumo (`Engenharia`, `BI`, etc.) |
| `projeto` | `STRING` | Centro de custo ou iniciativa vinculada |
| `custo_total` | `NUMERIC` | Valor financeiro faturado em reais (R$) |

---

## 📁 Catálogo da Biblioteca: Do Código ao Negócio

### ⚙️ 1. Infraestrutura e Pipeline Inicial
* `setup_carga_inicial_logs_faturamento.sql`  
  **Objetivo:** Criação física e modelagem da base de dados analítica utilizando DDL/DML e unificação de históricos via `UNION ALL`.

### 🕵️‍♂️ 2. Auditoria e Identificação de Anomalias (Fase de Informar)
* `identificacao_anomalias_custo_acima_da_media.sql`  
  **Pedido do Gestor:** Auditar variações atípicas no serviço *BigQuery* que ultrapassaram a linha de corte média da empresa (R$ 130,14).
* `auditoria_custos_filtros_combinados.sql`  
  **Pedido do Gestor:** Isolar múltiplos cenários cruzando datas específicas de armazenamento com instâncias de banco de dados.
* `auditoria_custos_por_intervalo_datas.sql`  
  **Pedido do Gestor:** Analisar tendências financeiras da reta final do mês filtrando a segunda quinzena via `BETWEEN`.
* `auditoria_filtros_multiplos_e_segregacao_equipes.sql`  
  **Pedido do Gestor:** Filtrar recursos de Produção com teto mínimo de gastos focado exclusivamente nas equipes de Engenharia e BI, com controle de precedência lógica (`AND`/`OR`).

### 💰 3. Alocação de Custos e Rateio (Fase de Informar)
* `alocacao_custos_desenvolvimento_por_equipe.sql`  
  **Pedido do Gestor:** Mapear o consumo de inovação/testes no ambiente de Desenvolvimento para planejamento do próximo trimestre.
* `auditoria_custo_total_por_servico_especifico.sql`  
  **Pedido do Gestor:** Consolidar o peso financeiro e a volumetria total de faturamento do *Compute Engine*.
* `rateio_custos_compartilhados_alocacao.sql`  
  **Pedido do Gestor:** Executar a regra de negócio para ratear igualmente (50%) os custos centralizados de armazenamento (*Shared Costs*).
* `projecao_markup_ambiente_producao.sql`  
  **Pedido do Gestor:** Aplicar taxa interna de governança de 10% (Markup) nos recursos de Produção com funções de arredondamento (`ROUND`).

### 🚀 4. Governança Avançada e Otimização (Fase de Otimização)
* `fechamento_financeiro_mensal_extract.sql`  
  **Pedido do Gestor:** Compactar registros diários em uma visão consolidada mensal para reporte executivo utilizando `EXTRACT`.
* `auditoria_projetos_acima_do_teto_having.sql`  
  **Pedido do Gestor:** Rastrear quais projetos e equipes estouraram o teto orçamentário de R$ 300,00 utilizando filtros pós-agregação com `HAVING`.

---

## 🚀 Como Executar no BigQuery Sandbox

1. Acesse o [Google BigQuery Console](https://console.cloud.google.com/bigquery) (sem necessidade de cartão de crédito no Sandbox).
2. Crie um dataset com o identificador `meu_finops`.
3. Execute o script `setup_carga_inicial_logs_faturamento.sql` para criar e popular a tabela `custos_nuvem_teste`.
4. Execute qualquer uma das consultas analíticas do catálogo para inspecionar os resultados de auditoria.

---

## 🧠 Competências Praticadas

* Modelagem e manipulação de dados analíticos no **Google Cloud BigQuery**
* Aplicação prática dos pilares do framework **Cloud FinOps** (visibilidade, alocação e controle)
* Escrita de queries SQL analíticas (`GROUP BY`, `HAVING`, `BETWEEN`, `EXTRACT`, `ROUND`, `UNION ALL`)
* Tradução de requisitos executivos e regras de negócio em lógica relacional



