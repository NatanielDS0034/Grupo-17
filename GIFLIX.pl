filme(forrest_gunp, romance, 1994, robert_zemeckis, [tom_hanks, robin_wright, gary_sinise], 8.8, 16).
filme(o_poderoso_chefao, drama, 1972, francis_ford_coppola, [marlon_brando, al_pacino, james_caan], 9.2, 18).
filme(a_origem, accao, 2010, christopher_nolan, [leonardo_dicaprio, joseph_gordon_levitt, ellen_page], 8.8, 12).
filme(clube_da_luta, suspense, 1999, david_fincher, [brad_pitt, edward_norton, helena_carter], 8.8, 18).
filme(interestellar, ficcao_cientifica, 2014, christopher_nolan, [matthew_mcconaughey, anne_hathaway], 8.6, 12).
filme(cisne_negro, drama, 2010, darren_aronofsky, [natalie_portman, mila_kunis, vincent_cassel], 8.0, 18).
filme(matrix, accao, 1999, lily_wachowski, [keanu_reeves, laurence_fishburne, carrie_anne_moss], 8.7, 14).
filme(a_teoria_de_tudo, romance, 2014, james_marsh, [eddie_redmayne, felicity_jones], 7.7, 12).
filme(parasita, comedia, 2019, bong_joon_ho, [song_kang_ho, lee_sun_kyun, choi_woo_shik], 8.6, 16).
filme(os_intocaveis, drama, 2011, olivier_nakache, [franck_dubosc, omar_sy], 8.5, 12).
filme(um_sonho_de_liberdade, drama, 1994, frank_darabont, [tim_robbins, morgan_freeman], 9.3, 16).
filme(a_rede_social, biografia, 2010, david_fincher, [jesse_eisenberg, andrew_garfield], 7.7, 12).
filme(after, romance, 2019, jenny_gage, [josephine_langford, hero_fiennes_tiffin], 5.3, 16).
filme(a_cinco_passos_de_voce, romance, 2019, justin_baldoni, [cole_sprouse, haley_richardson], 6.7, 20).
filme(a_culpa_e_das_estrelas,romance,2014,josh_boone,[shailene_woodley,ansel_elgort], 10,21).

utilizador(jesuina, 21, romance, [justin_baldoni], [cole_sprouse, haley_richardson]).
utilizador(nataniel, 20, accao, [jonatan_heit], [will_Smith, jose_gordon_levitt]).
utilizador(monica, 21, suspense, [david_fincher], [brad_pitt, edward_norton]).
utilizador(fernando, 22, accao, [lily_wachowski], [keanu_reeves, laurence_fishburne]).
utilizador(eduardo, 24, romance, [jenny_gage], [josephine_langford]).
utilizador(mariano, 30, romance, [josh_boone], [shailene_woodley, ansel_elgort]).

recomendar_filme(Utilizador, Filme) :-
    utilizador(Utilizador, Idade, GeneroPref, DiretoresPref, AtoresPref),
    setof(
        Filme,
        (filme(Filme, Genero, _, Diretor, Atores, Avaliacao, Classificacao),
         Classificacao =< Idade,
         Avaliacao >= 7.0,
         (Genero = GeneroPref ; member(Diretor, DiretoresPref) ;
           (member(Ator, Atores), member(Ator, AtoresPref)))),
        FilmesUnicos),
    member(Filme, FilmesUnicos).















