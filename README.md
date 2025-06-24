# 🌟 **Relatório do Projeto: Giflix**  
### *Sistema de Recomendação de Filmes Inteligente*  
**📚 Disciplina:** Estruturas Discretas  
**🛠️ Tecnologia:** Prolog  

---

## 🎬 **Introdução**  
O **Giflix** é um sistema de recomendação de filmes desenvolvido em Prolog que combina **lógica de predicados** e **preferências do usuário** para sugerir filmes perfeitos!  

> *"Porque a noite de cinema deve ser tão única quanto você!"*  

---

## 🎯 **Objetivo**  
✨ Criar um sistema que:  
- 🔍 **Analisa** preferências (género, diretores, atores).  
- 🎭 **Recomenda** filmes com base em idade e avaliação.  
- 🖥️ Oferece um **menu interativo** fácil de usar.  

---

## 🗃️ **Base de Conhecimento**  

### 🎥 **Filmes** *(Exemplo)*  
```prolog
filme(
    forrest_gunp,               % Título  
    romance,                    % Género  
    1994,                       % Ano  
    robert_zemeckis,            % Diretor  
    [tom_hanks, robin_wright],  % Atores  
    8.8,                        % Avaliação (0-10)  
    16                          % Classificação etária  
).
```

### 👥 **Utilizadores** *(Exemplo)*  
```prolog
utilizador(
    jesuina,                    % Nome  
    21,                         % Idade  
    romance,                    % Género favorito  
    [justin_baldoni],           % Diretores favoritos  
    [cole_sprouse, haley_richardson]  % Atores favoritos  
).
```

---

## ⚙️ **Funcionalidades**  

### 1. 🎯 **Recomendação Personalizada**  
- ✅ Filtra por:  
  - **Idade** (respeita classificação etária).  
  - **Avaliação** (apenas filmes com nota ≥ 7.0).  
  - **Preferências** (género, diretor ou ator).  

**Exemplo:**  
```prolog
?- recomendar_filme(jesuina, Filme).  
Filme = forrest_gunp ;  
Filme = a_teoria_de_tudo ;  
...
```

### 2. 🎭 **Listagem por Género**  
Mostra todos os filmes do género preferido do utilizador.  

**Exemplo:**  
```
🔄 Consultando filmes de "drama" para mariano:  
• o_poderoso_chefao (⭐9.2 | 🔞18+)  
• cisne_negro (⭐8.0 | 🔞18+)  
• os_intocaveis (⭐8.5 | 12+)  
```

### 3. 🖥️ **Menu Interativo**  
```
===== 🍿 Giflix =====  
1️⃣ - Recomendar filmes  
2️⃣ - Listar por género  
3️⃣ - Sair  
```
---

## 📊 **Exemplo de Saída**  
### 🎯 **Recomendações para "jesuina"**  
```
🎬 Filme: forrest_gunp  
   ⭐ Avaliação: 8.8 | 📅 Ano: 1994  
   👨‍💼 Diretor: robert_zemeckis  
   🎭 Atores: [tom_hanks, robin_wright]  

🎬 Filme: a_teoria_de_tudo  
   ⭐ Avaliação: 7.7 | 📅 Ano: 2014  
   👨‍💼 Diretor: james_marsh  
   🎭 Atores: [eddie_redmayne, felicity_jones]  
```

---

## 🏆 **Conclusão**  
✅ **Sucesso:** Sistema funcional com recomendações personalizadas.  
🚀 **Melhorias futuras:**  
- Adicionar **mais filmes**.  
- Incluir **avaliações de usuários**.  
- Desenvolver **interface gráfica**.  

---

**👨‍💻 Desenvolvido por:** [Seu Nome]  
**📅 Data:** [Data]  

---

✨ **Giflix - Porque cada filme conta uma história, e a sua merece a melhor recomendação!** ✨  

--- 

🔹 *Relatório formatado com emojis e markdown para melhor visualização.* 🎨# 🌟 **Relatório do Projeto: Giflix**  
### *Sistema de Recomendação de Filmes Inteligente*  
**📚 Disciplina:** Estruturas Discretas  
**🛠️ Tecnologia:** Prolog  

---

## 🎬 **Introdução**  
O **Giflix** é um sistema de recomendação de filmes desenvolvido em Prolog que combina **lógica de predicados** e **preferências do usuário** para sugerir filmes perfeitos!  

> *"Porque a noite de cinema deve ser tão única quanto você!"*  

---

## 🎯 **Objetivo**  
✨ Criar um sistema que:  
- 🔍 **Analisa** preferências (género, diretores, atores).  
- 🎭 **Recomenda** filmes com base em idade e avaliação.  
- 🖥️ Oferece um **menu interativo** fácil de usar.  

---

## 🗃️ **Base de Conhecimento**  

### 🎥 **Filmes** *(Exemplo)*  
```prolog
filme(
    forrest_gunp,               % Título  
    romance,                    % Género  
    1994,                       % Ano  
    robert_zemeckis,            % Diretor  
    [tom_hanks, robin_wright],  % Atores  
    8.8,                        % Avaliação (0-10)  
    16                          % Classificação etária  
).
```

### 👥 **Utilizadores** *(Exemplo)*  
```prolog
utilizador(
    jesuina,                    % Nome  
    21,                         % Idade  
    romance,                    % Género favorito  
    [justin_baldoni],           % Diretores favoritos  
    [cole_sprouse, haley_richardson]  % Atores favoritos  
).
```

---

## ⚙️ **Funcionalidades**  

### 1. 🎯 **Recomendação Personalizada**  
- ✅ Filtra por:  
  - **Idade** (respeita classificação etária).  
  - **Avaliação** (apenas filmes com nota ≥ 7.0).  
  - **Preferências** (género, diretor ou ator).  

**Exemplo:**  
```prolog
?- recomendar_filme(jesuina, Filme).  
Filme = forrest_gunp ;  
Filme = a_teoria_de_tudo ;  
...
```

### 2. 🎭 **Listagem por Género**  
Mostra todos os filmes do género preferido do utilizador.  

**Exemplo:**  
```
🔄 Consultando filmes de "drama" para mariano:  
• o_poderoso_chefao (⭐9.2 | 🔞18+)  
• cisne_negro (⭐8.0 | 🔞18+)  
• os_intocaveis (⭐8.5 | 12+)  
```

### 3. 🖥️ **Menu Interativo**  
```
===== 🍿 Giflix =====  
1️⃣ - Recomendar filmes  
2️⃣ - Listar por género  
3️⃣ - Sair  
```
---

## 📊 **Exemplo de Saída**  
### 🎯 **Recomendações para "jesuina"**  
```
🎬 Filme: forrest_gunp  
   ⭐ Avaliação: 8.8 | 📅 Ano: 1994  
   👨‍💼 Diretor: robert_zemeckis  
   🎭 Atores: [tom_hanks, robin_wright]  

🎬 Filme: a_teoria_de_tudo  
   ⭐ Avaliação: 7.7 | 📅 Ano: 2014  
   👨‍💼 Diretor: james_marsh  
   🎭 Atores: [eddie_redmayne, felicity_jones]  
```

---

## 🏆 **Conclusão**  
✅ **Sucesso:** Sistema funcional com recomendações personalizadas.  
🚀 **Melhorias futuras:**  
- Adicionar **mais filmes**.  
- Incluir **avaliações de usuários**.  
- Desenvolver **interface gráfica**.  

---

**👨‍💻 Desenvolvido por:** [Seu Nome]  
**📅 Data:** [Data]  

---

✨ **Giflix - Porque cada filme conta uma história, e a sua merece a melhor recomendação!** ✨  

--- 

🔹 *Relatório formatado com emojis e markdown para melhor visualização.* 🎨
