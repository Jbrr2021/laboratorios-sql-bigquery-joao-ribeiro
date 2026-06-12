# 🗂️ Minha Biblioteca Pessoal de Engenharia de Dados & Cloud FinOps
<img width="1920" height="920" alt="image" src="https://github.com/user-attachments/assets/39ad0f6a-b6ed-4ce2-adbb-cb7f412f0fd1" />

Neste repositório, organizei e cataloguei a minha biblioteca técnica de consultas analíticas desenvolvida diretamente no **Google BigQuery Sandbox**. Cada script foi modelado por mim para responder a dores reais de negócio, conectando os conceitos teóricos do livro *"Cloud FinOps (2ª Edição)"* e *"SQL Para Análise de Dados"*.

## 📊 A Estrutura da Infraestrutura (`meu_finops`)
Para dar suporte à biblioteca, estruturei um dataset próprio contendo logs de faturamento enriquecidos com múltiplas dimensões de governança: `ambiente` (Produção/Desenvolvimento), `equipe` e `projeto`.

## 📁 Catálogo de Scripts da Minha Biblioteca

Abaixo estão listados os arquivos contidos na minha árvore de consultas e o objetivo analítico de cada um:

### ⚙️ 1. Infraestrutura e Inicialização
*   `setup_carga_inicial_logs_faturamento.sql`: Script DDL/DML responsável pela modelagem lógica e carga física dos dados estruturados de faturamento.

### 🕵️‍♂️ 2. Auditoria e Identificação de Anomalias (Fase de Informar)
*   `identificacao_anomalias_custo_acima_da_media.sql`: Consulta que utiliza múltiplos critérios restritivos (`AND`) para rastrear recursos cujos gastos individuais ultrapassaram a linha de corte média da empresa.
*   `auditoria_custos_filtros_combinados.sql`: Query projetada para lidar com regras de precedência de operadores lógicos (`AND` e `OR`), blindando o resultado em ambientes massivos.
*   `auditoria_custos_por_intervalo_datas.sql`: Filtro temporal utilizando o operador `BETWEEN` para isolar janelas cronológicas específicas e analisar tendências (Ex: gastos da segunda quinzena).

### 💰 3. Alocação de Custos e Rateio (Fase de Informar)
*   `alocacao_custos_desenvolvimento_por_equipe.sql`: Agrupamento macro focado em mapear quais departamentos estão consumindo mais recursos financeiros dentro dos ambientes de testes/desenvolvimento.
*   `auditoria_custo_total_por_servico_especifico.sql`: Consolidação financeira rápida para isolar a volumetria e o impacto de um único provedor/produto no faturamento total (Ex: *Compute Engine*).
*   `rateio_custos_compartilhados_alocacao.sql`: Aplicação prática de matemática no `SELECT` para realizar o rateio (divisão de 50%) de serviços centralizados (*Shared Costs*).
*   `projecao_markup_ambiente_producao.sql`: Aplicação de taxa interna de governança (10%) em recursos de produção, utilizando funções de arredondamento (`ROUND`) e ordenação analítica.

### 🚀 4. Governança Avançada e Otimização (Fase de Otimização)
*   `fechamento_financeiro_mensal_extract.sql`: Consolidação de alto nível utilizando a função `EXTRACT` para compactar milhares de linhas diárias em um fechamento executivo de médias e totais mensais.
*   `auditoria_projetos_acima_do_teto_having.sql`: Query analítica de nível pleno que utiliza a cláusula `HAVING` para filtrar valores após o processamento dos agrupamentos (`GROUP BY`), identificando os projetos reais que estouraram o orçamento.

## 🧠 Meu Aprendizado Contínuo
Desenvolver e catalogar essa biblioteca me permitiu consolidar a visão rígida de sintaxe do SQL analítico e entender como a Engenharia de Dados atua diretamente como o motor de visibilidade para a tomada de decisões financeiras em nuvem.


