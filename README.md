# 🗂️ Minha Biblioteca Pessoal de Engenharia de Dados & Cloud FinOps

<img width="1920" height="920" alt="image" src="https://github.com/user-attachments/assets/39ad0f6a-b6ed-4ce2-adbb-cb7f412f0fd1" />

Neste repositório, organizei e cataloguei a minha **biblioteca pessoal de consultas analíticas**, desenvolvida diretamente no **Google BigQuery Sandbox**. 

O grande diferencial deste projeto é que **cada script foi desenhado para solucionar uma dor real de negócio (Contexto de Negócio / Pedido do Gestor)**, conectando de forma direta as teorias do framework *Cloud FinOps* com a prática de manipulação de dados em SQL.

## 📊 A Estrutura da Infraestrutura (`meu_finops`)
Para dar suporte à biblioteca, estruturei e populei uma tabela própria (`custos_nuvem_teste`) que simula pipelines de faturamento em nuvem (*Billing Data*), enriquecida com dimensões críticas de governança: `ambiente` (Produção/Desenvolvimento), `equipe` e `projeto`.

## 📁 Catálogo da Biblioteca: Do Código ao Negócio

Abaixo estão listados os arquivos contidos na minha árvore de consultas e os desafios corporativos que eles resolvem:

### ⚙️ 1. Infraestrutura e Pipeline Inicial
*   `setup_carga_inicial_logs_faturamento.sql`: Criação física e modelagem lógica da base de dados analítica utilizando DDL/DML e unificações eficientes com `UNION ALL`.

### 🕵️‍♂️ 2. Auditoria e Identificação de Anomalias (Fase de Informar)
*   `identificacao_anomalias_custo_acima_da_media.sql`: **Pedido do Gestor:** Auditar variações atípicas no serviço BigQuery que ultrapassaram a linha de corte média da empresa (R$ 130,14).
*   `auditoria_custos_filtros_combinados.sql`: **Pedido do Gestor:** Isolar múltiplos cenários de infraestrutura cruzando datas específicas de armazenamento com recursos de Banco de Dados de forma simultânea.
*   `auditoria_custos_por_intervalo_datas.sql`: **Pedido do Gestor:** Analisar tendências financeiras da reta final do mês filtrando apenas a segunda quinzena por meio do operador `BETWEEN`.
*   `auditoria_filtros_multiplos_e_segregacao_equipes.sql`: **Pedido do Gestor:** Filtrar recursos de Produção com teto mínimo de gastos focado exclusivamente nas equipes de Engenharia e BI, controlando a precedência lógica com parênteses.

### 💰 3. Alocação de Custos e Rateio (Fase de Informar)
*   `alocacao_custos_desenvolvimento_por_equipe.sql`: **Pedido do Gestor:** Mapear o consumo de inovação e testes focado exclusivamente no ambiente de Desenvolvimento para planejamento do próximo trimestre.
*   `auditoria_custo_total_por_servico_especifico.sql`: **Pedido do Gestor:** Consolidar o peso financeiro e a volumetria total de faturamento do provedor de servidores virtuais (*Compute Engine*).
*   `rateio_custos_compartilhados_alocacao.sql`: **Pedido do Gestor:** Executar a engenharia matemática para ratear meio a meio (50%) os custos centralizados de armazenamento (*Shared Costs*).
*   `projecao_markup_ambiente_producao.sql`: **Pedido do Gestor:** Aplicar uma taxa interna de governança de 10% (Markup) nos recursos do ambiente de Produção utilizando funções de arredondamento (`ROUND`).

### 🚀 4. Governança Avançada e Otimização (Fase de Otimização)
*   `fechamento_financeiro_mensal_extract.sql`: **Pedido do Gestor:** Compactar milhares de registros diários em uma visão consolidada mensal para apresentação executiva à diretoria financeira utilizando `EXTRACT`.
*   `auditoria_projetos_acima_do_teto_having.sql`: **Pedido do Gestor:** Rastrear cirurgicamente quais projetos e equipes estouraram o teto orçamentário de R$ 300,00 na nuvem, utilizando filtros pós-agregação com `HAVING`.

## 🧠 Meu Aprendizado Contínuo
Desenvolver e catalogar essa biblioteca me permitiu consolidar a visão rígida de sintaxe do SQL analítico e entender o papel estratégico da Engenharia de Dados: **fornecer visibilidade financeira clara para que a liderança tome decisões eficientes.**



