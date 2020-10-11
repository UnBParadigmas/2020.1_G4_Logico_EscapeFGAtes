desafio:-write("Você está cursando a matéria de Redes, 
                mas alguém hackeou o computador do professor pra mudar as notas!", nl,
                "Calma, vai ficar tudo bem! Já que você estudou muito pra essa matéria e sabe como
                rastrear o criminoso usando o endereço IP!!!", nl,
                "Coloque seus conhecimentos em prática... Quem foi o tal hacker?",nl).




possible_suspect(sara).
possible_suspect(pedro).
possible_suspect(andre).
possible_suspect(joao).
possible_suspect(maria).
possible_suspect(ana).
possible_suspect(mateus).
possible_suspect(lucas).
possible_suspect(augusto).
possible_suspect(carol).

address(sara,"0.136.244.7").
address(pedro,"15.379.244.17").
address(andre,"66.179.244.17").
address(joao,"0.19.144.9").
address(maria,"136.96.0.87").
address(ana,"78.43.0.143").
address(mateus,"66.179.244.17").
address(lucas,"66.179.244.17").
address(augusto,"66.179.244.17").
address(carol,"66.179.244.17").

has_failed_redes(sara, true).
has_failed_redes(pedro, false).
has_failed_redes(andre, false).
has_failed_redes(joao, false).
has_failed_redes(maria, false).
has_failed_redes(ana, true).
has_failed_redes(mateus, false).
has_failed_redes(lucas, true).
has_failed_redes(augusto, false).
has_failed_redes(carol, true).

was_home(sara,true).
was_home(pedro,false).
was_home(andre,true).
was_home(joao, true).
was_home(maria, true).
was_home(ana, true).
was_home(mateus, true).
was_home(lucas, true).
was_home(augusto, true).
was_home(carol, true).

main_suspect(Person,IP):-
  possible_suspect(Person),
  address(Person,IP),
  has_failed_redes(Person, true),
  was_home(Person, true).

