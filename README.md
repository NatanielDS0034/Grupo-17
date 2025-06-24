# 📽️ GIFLIX - Sistema de Recomendação de Filmes em Prolog

![Prolog](https://img.shields.io/badge/Prolog-%23E61B23.svg?logo=swi-prolog&logoColor=white)
![Licença Acadêmica](https://img.shields.io/badge/Licença-Acadêmica-blue)

## 📝 Introdução
O GIFLIX é um sistema de recomendação de filmes desenvolvido em Prolog para a disciplina de Estruturas Discretas. O sistema utiliza programação lógica para sugerir filmes personalizados baseados nas preferências dos utilizadores.

## 🎯 Objetivos
- Implementar um motor de recomendações inteligente
- Aplicar conceitos de programação lógica (fatos, regras, unificação)
- Criar um sistema que considere múltiplos critérios de preferência

## 🎬 Base de Dados de Filmes
O sistema contém 15 filmes com os seguintes atributos:
- Título
- Gênero
- Ano de lançamento
- Diretor
- Atores principais
- Avaliação (0-10)
- Classificação etária

### Exemplo de Entrada:
```prolog
filme(forrest_gunp, romance, 1994, robert_zemeckis, 
      [tom_hanks, robin_wright, gary_sinise], 8.8, 16).
```

## 👥 Perfis de Utilizadores
Cada utilizador tem um perfil com:
- Nome
- Idade
- Gênero preferido
- Diretores favoritos
- Atores favoritos

### Exemplo:
```prolog
utilizador(jesuina, 21, romance, 
          [justin_baldoni], 
          [cole_sprouse, haley_richardson]).
```

## ⚙️ Motor de Recomendação
A regra principal `recomendar_filme/2` implementa a seguinte lógica:

1. Filtra filmes adequados à idade do utilizador
2. Considera apenas filmes com avaliação ≥ 7.0
3. Prioriza filmes que combinam com:
   - Gênero preferido do utilizador
   - Diretores favoritos
   - Atores favoritos

```prolog
recomendar_filme(Utilizador, Filme) :-
    utilizador(Utilizador, Idade, GeneroPref, DiretoresPref, AtoresPref),
    setof(
        Filme,
        (filme(Filme, Genero, _, Diretor, Atores, Avaliacao, Classificacao),
         Classificacao =< Idade,
         Avaliacao >= 7.0,
         (Genero = GeneroPref ; 
          member(Diretor, DiretoresPref) ;
          (member(Ator, Atores), member(Ator, AtoresPref)))),
        FilmesUnicos),
    member(Filme, FilmesUnicos).
```

## 🚀 Como Usar
1. Carregue o arquivo no interpretador Prolog:
   ```prolog
   ?- [giflix].
   ```

2. Execute recomendações para um utilizador:
   ```prolog
   ?- recomendar_filme(jesuina, Filme).
   Filme = a_teoria_de_tudo ;
   Filme = a_cinco_passos_de_voce ;
   Filme = a_culpa_e_das_estrelas.
   ```

## 📊 Exemplos de Recomendações
| Utilizador  | Filmes Recomendados              | Critério Ativado         |
|-------------|----------------------------------|--------------------------|
| jesuina     | a_cinco_passos_de_voce           | Ator: cole_sprouse       |
| nataniel    | a_origem, matrix                 | Gênero: accao            |
| monica      | clube_da_luta                    | Diretor: david_fincher   |
| fernando    | matrix                           | Diretor: lily_wachowski  |

## 📚 Estrutura do Projeto
```
giflix.pl            # Código fonte principal
relatorio/           # Documentação do projeto
  README.md          # Este arquivo
  relatorio.pdf      # Relatório acadêmico
```

## 📌 Conclusão
O GIFLIX demonstra eficientemente como conceitos de programação lógica podem ser aplicados para criar sistemas de recomendação personalizados. O projeto atende aos requisitos da disciplina de Estruturas Discretas, mostrando na prática a aplicação de fatos, regras e mecanismos de inferência lógica.

## 👨‍🎓 Autores
- [Nataniel Malongi]
- [Jesuina Mabomba]
  [Miguel kafita]
- [António Menezes]

## 🏫 Instituição
[Universidade Agostinho neto/Faculdade]  
Disciplina: Estruturas Discretas  


## 📅 Data
[Data de Entrega]