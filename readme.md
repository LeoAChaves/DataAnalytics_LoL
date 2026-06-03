<h1 align="center">📊 Projeto de Módulo 3 - BD_LoL</h1>

<p align="center">
  <img src="./League of Legends Competitive matches/Gráficos/Participantes.png" width="80%">
</p>

<p align="center">
  <img alt="MySQL" src="https://img.shields.io/badge/MySQL-8.0-4479A1?style=for-the-badge&logo=mysql&logoColor=white">
  <img alt="Data Analytics" src="https://img.shields.io/badge/Data_Analytics-FF6B6B?style=for-the-badge">
  <img alt="Status" src="https://img.shields.io/badge/Status-Concluído-brightgreen?style=for-the-badge">
</p>

---

## 📋 Sobre o Projeto

Este projeto foi desenvolvido como parte do **Módulo 3** do curso Web Dev Full Stack da [Resilia Educação](https://www.resilia.com.br/), com foco em banco de dados e análise exploratória de dados (EDA).

O tema escolhido foi **League of Legends**, utilizando dados reais de partidas competitivas dos anos de **2015, 2016 e 2017**.

---

## 🎯 Propostas do Projeto

- ✅ Executar uma **análise exploratória dos dados**
- ✅ **Modelar tabelas** para um banco de dados MySQL
- ✅ **Desenvolver queries** para extrair insights
- ✅ **Formular gráficos** a partir das queries

---

## 🔍 Principais Análises Realizadas

### 🏆 Campeões

- Mais pickados (geral e por posição/ano)
- Mais banidos (com classe primária/secundária)
- Mais vitoriosos por ano
- Mais derrotados por ano

### ⚔️ Abates (Kills)

- Jogadores com mais abates totais
- Jogadores que mais abateram solo
- Jogadores mais abatidos
- First bloods mais rápidos (solo e em equipe)

### 🗺️ Rotas e Estruturas

- Torres destruídas por rota (Top, Mid, Bot)
- Tipos de estruturas derrubadas
- Distribuição de kills por função

### ⏱️ Partidas

- Partidas mais longas
- Partidas mais rápidas
- Tempo total de jogo (soma + média)

---

## 📊 Gráficos Gerados

| Categoria    | Gráficos                                                                 |
| ------------ | ------------------------------------------------------------------------ |
| **Times**    | Times em 2015, 2016, 2017                                                |
| **Vitórias** | Taxa de vitórias 2015, Vitórias 2016, Vitórias 2017                      |
| **Abates**   | Mais abates, Mais abates solo, Mais abatidos                             |
| **Campeões** | Mais pickados, Mais banidos, Classes mais pickadas, Classes mais banidas |
| **Partidas** | Torres destruídas, Partidas mais rápidas, Partida mais longa             |

<div align="center">
  <img src="./League of Legends Competitive matches/Gráficos/Times2015.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/Times2016.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/Times2017.png" width="30%">
  <br>
  <img src="./League of Legends Competitive matches/Gráficos/TaxaVitórias2015.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/Vitórias2016.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/Vitórias2017.png" width="30%">
  <br>
  <img src="./League of Legends Competitive matches/Gráficos/MaisAbates.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/MaisAbatesSolo.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/MaisAbatidos.png" width="30%">
  <br>
  <img src="./League of Legends Competitive matches/Gráficos/MaisPickados.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/MaisBanidos.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/ClassesMaisPickados.png" width="30%">
  <br>
  <img src="./League of Legends Competitive matches/Gráficos/ClasseMaisBanidos.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/TorresDestruidas.png" width="30%">
  <img src="./League of Legends Competitive matches/Gráficos/PartidasMaisRapidas.png" width="30%">
  <br>
  <img src="./League of Legends Competitive matches/Gráficos/PartidasMaisLonga.png" width="30%">
</div>

---

## 🗃️ Estrutura do Banco de Dados

### Principais Tabelas

| Tabela       | Descrição                                                                         |
| ------------ | --------------------------------------------------------------------------------- |
| `matchinfo`  | Informações gerais das partidas (times, resultado, duração, campeões por posição) |
| `kills`      | Registro de abates (killer, victim, assistências, tempo)                          |
| `structures` | Estruturas destruídas (torres, inibidores, nexus)                                 |
| `bans`       | Campeões banidos por partida                                                      |
| `champions`  | Dados dos campeões (nome, classe primária, classe secundária)                     |

---

## 🔧 Principais Queries

### Exemplo 1: Campeões mais pickados

```sql
SELECT topChamp, champ.classe_primaria, COUNT(topChamp) AS countTop
FROM (SELECT blueTopChamp AS topChamp FROM matchinfo
      UNION ALL SELECT redTopChamp AS topChamp FROM matchinfo
      ...) as totalPicks
INNER JOIN champions champ ON topChamp = champ.nome
GROUP BY topChamp ORDER BY countTop DESC LIMIT 25;
```

### Exemplo 2: Abates solo (sem assistência)

```sql
SELECT killer, COUNT(killer) AS Solou FROM kills
WHERE Assist_1 = '' AND killer != '' AND victim != ''
GROUP BY killer ORDER BY Solou DESC LIMIT 10;
```

### Exemplo 3: Estruturas destruídas por rota

```sql
SELECT lane, COUNT(type) AS torres_destruidas FROM structures
WHERE lane != '' AND type NOT LIKE 'NEXUS%'
GROUP BY lane;
```

---

## 📊 Insights Obtidos

| Categoria                  | Principais Descobertas                                       |
| -------------------------- | ------------------------------------------------------------ |
| **Campeões mais pickados** | Identificação dos campeões favoritos por temporada e posição |
| **Campeões mais banidos**  | Metagame de bans por classe de campeão                       |
| **Abates solo**            | Jogadores com maior habilidade individual                    |
| **First blood**            | Tempos médios e jogadores mais agressivos                    |
| **Torres destruídas**      | Rotas mais pressionadas (Mid e Bot frequentemente lideram)   |
| **Duração das partidas**   | Partidas mais longas vs mais curtas do período               |

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia                     | Descrição                                                |
| ------------------------------ | -------------------------------------------------------- |
| **MySQL**                      | Banco de dados relacional para armazenamento e consultas |
| **SQL**                        | Linguagem de consulta para extração de dados             |
| **Ferramenta de visualização** | Geração de gráficos a partir dos resultados das queries  |

---

## 👥 Autores

<table align="center">
  <tr>
    <td align="center">
      <a href="https://github.com/vanessacreis">
        <img style="border-radius: 50%;" src="https://github.com/vanessacreis.png" width="100px;" alt=""/>
        <br />
        <sub><b>Vanessa Reis</b></sub>
      </a>
      <br />
      <a href="https://github.com/vanessacreis">🐙</a>
     </td>
    <td align="center">
      <a href="https://github.com/SuzannePS">
        <img style="border-radius: 50%;" src="https://github.com/SuzannePS.png" width="100px;" alt=""/>
        <br />
        <sub><b>Suzanne Patrícia</b></sub>
      </a>
      <br />
      <a href="https://github.com/SuzannePS">🐙</a>
     </td>
    <td align="center">
      <a href="https://github.com/hudson-uchoa">
        <img style="border-radius: 50%;" src="https://github.com/hudson-uchoa.png" width="100px;" alt=""/>
        <br />
        <sub><b>Hudson Uchôa</b></sub>
      </a>
      <br />
      <a href="https://github.com/hudson-uchoa">🐙</a>
     </td>
    <td align="center">
      <a href="https://github.com/LeoAChaves">
        <img style="border-radius: 50%;" src="https://github.com/LeoAChaves.png" width="100px;" alt=""/>
        <br />
        <sub><b>Leonardo Chaves</b></sub>
      </a>
      <br />
      <a href="https://github.com/LeoAChaves">🐙</a>
     </td>
  </tr>
</table>

<br />

<div align="center">
  <a href="https://github.com/vanessacreis">
    <img alt="Vanessa Reis" src="https://img.shields.io/badge/Vanessa_Reis-181717?style=for-the-badge&logo=github&logoColor=white">
  </a>
  <a href="https://github.com/SuzannePS">
    <img alt="Suzanne Patrícia" src="https://img.shields.io/badge/Suzanne_Patrícia-181717?style=for-the-badge&logo=github&logoColor=white">
  </a>
  <a href="https://github.com/hudson-uchoa">
    <img alt="Hudson Uchôa" src="https://img.shields.io/badge/Hudson_Uchôa-181717?style=for-the-badge&logo=github&logoColor=white">
  </a>
  <a href="https://github.com/LeoAChaves">
    <img alt="Leonardo Chaves" src="https://img.shields.io/badge/Leonardo_Chaves-181717?style=for-the-badge&logo=github&logoColor=white">
  </a>
</div>

## 📝 Licença

Este projeto está sob a licença MIT.

---

<div align="center">
  <strong>
    Projeto de Análise de Dados - League of Legends Competitive Matches (2015-2017)
  </strong>
  <br>
  <br>
  <img src="./League of Legends Competitive matches/Gráficos/Participantes.png" width="60%">
  <br>
  <em>Dados reais de partidas competitivas de LoL • Análise exploratória • MySQL • Visualização</em>
  <br>
  Desenvolvido com 💻 e 📊
</div>

---
