:- use_module(library(clpfd)).
:- use_module(library(random)).
:- dynamic contador/1.

contador(0).

incrementaContador :- contador(X), Y is X, retract(contador(X)), Z is (Y+1), assert(contador(Z)), (X = 3 -> jubilar ; write('Você reprovou '),write(X),write(' vezes')),nl.

mainIncrementa :- incrementaContador.

decrementaContador :- contador(X), Y is X, retract(contador(X)), Z is (Y-1), assert(contador(Z)).

%Comandos

iniciar:-write('Parabéns por passar no vestibular e ingressar nessa nova fase da vida, a FACULDADE, será que você tem o que é preciso para sobreviver.'),nl,
         write('Tente não jubilar e consiga se formar em 5 anos. Bem vindo ao curso de Engenharia.Bem vindo ao FGAtes.'),nl,comandos.

comandos:-nl,write('Antes de começar você deve entender algumas instruções sobre seu curso:'),nl,
          write('comandos.                   --Acesse as instruções a qualquer momento'),nl,
          write('jogar.                      --Inicia seu ciclo de 5 anos na faculdade'),nl,
          write('trancar.                    --Para caso queira desisitir e sair do jogo'),nl.

trancar:-write('É uma pena que não tenha conseguido se formar. Mais sorte da próxima vez, até logo'),nl,
         write('ESCAPE FGATES: Você não se formou!'),!.

jogar:-nl,write('Bem-vindo, parabéns por passar o vestibular, vocễ agora deve enfrentar os 5 anos de faculdade, será que você irá sobreviver '),nl,
       write('Como calouro você não escolhe, por isso deverá enfrentar seus primeiros 2 semestres passando nas matérias que lhe foram dadas. Boa sorte!'),nl,calculo.

jubilar:-write('Você reprovou mais de 3 vezes, você foi Jubilado!'),!.

%Ano1

calculo:-nl,write('Seu primeiro desafio, Cálculo, a matéria que é falada por todos os estudantes de engenharia'),nl,
         write('essa matéria pode ser fácil como somar 1 com 2, como também pode ser impossível de se passar, veremos como você irá se sair nessa.'),nl,
         nl,write('Resolva:'),nl,
         write('1 + 2 = ?'),nl,
         write('Resposta: '),
         read(Resposta),
         (Resposta=:=3 -> write('Parabéns por passar em seu primeiro semestre, veremos até quando irá durar.'),nl,intro_engenharia ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,mainIncrementa,calculo).

intro_engenharia:-nl,write('Você está fazendo Introdução a Engenharia, seu professor te propôs um trabalho simples para que possa ser aprovado'),nl,
                  write('Ele pediu para que você organizasse a tabela de assentos do seu grupo'),nl,
                  write('A tabela serve para saber qual posição cada membro irá ocupar, sabendo que cada mês os membros devem mudar de lugar'),nl,
                  write('Por você estar no primeiro semestre o professor facilitou e pediu para você apenas terminar a tabela já feita.'),nl,
                  write('A forma de organizar te lembra um sudoku de 4x4'),nl,
                  write('Sabendo que no seu grupo tem o Andre, a Sara, o Gabriel e o Pedro'),nl,
                  write('E que cada um corresponde respectivamente aos numeros 1, 2, 3 e 4, e que você como lider não participa dessa organização'),nl,
                  write('Organize a tabela em forma de lista: '),nl,
                  write('Tabela:'),nl,
                  write('4 1 ? ?'),nl,
                  write('2 3 4 1'),nl,
                  write('1 2 3 4'),nl,
                  write('? ? 1 2'),nl,
                  write('Lembrando que a resposta deve conter todos os valores, e não apenas os números que faltam'),nl,
                  Resposta = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2],
                  read(Lista),
                  (Lista = Resposta -> write('Parabéns a lista está correta! você foi aprovado!'),ferias(1) ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,mainIncrementa,intro_engenharia).

eda:-
       nl,write('Agora você está em Estruturas de Dados!'),
       nl,write('Prove que está prestando atenção nas aulas e ordene a lista a seguir:'),
       nl,write('[13,22,0,3,23,9,45,20]'),nl,
       Resposta = [0,3,9,13,20,22,23,45],
       read(Lista),
       (Lista = Resposta -> write('Essa foi fácil... Aprovado!') ; write('Que pena, você reprovou!'),nl).

redes:-
       nl,write('Seu desafio agora é a matéria de Redes!'),
       nl,write('Alguém hackeou o computador do professor pra mudar as notas!'), 
       nl,write('Calma, vai ficar tudo bem... Se você estudou de verdade pra essa matéria, é só encontrar o hacker pelo endereço IP'),
       nl,write('Agora, vamos lá! Coloque seus conhecimentos em prática!'),
       nl,computador.
       computador:-
              nl,write('Você sabe que:'),
              nl,write('1. o hacker muito provavelmente é alguém que está reprovando na matéria'),
              nl,write('2. o hacker pode dividir o computador com outra pessoa'),
              nl,write('3. o hacker realizou a mudança das notas na terça-feira às 12h47'),
              nl,write('E agora, o que deseja fazer?'),
              nl,write('1. conferir o IP'),
              nl,write('2. acusar a pessoa que está em condição'),
              nl,write('3. estudar pra outra matéria'),
              nl,read(Escolha),
              (Escolha=:=1 -> write('Boa!'),nl,entrevistas ; write('Você falhou em encontrar o hacker e o professor reprovou TODOS!!!'),nl).
       entrevistas:-
              nl,write('O IP aponta para a república onde moram Sara, Pedro, André e João'),
              nl,write('Agora você tem em mãos as seguintes informações:'),
              nl,write('1. João tinha uma prova terça-feira às 10h e almoçou no Restaurante Universitário'),
              nl,write('2. Pedro faltou a aula que tinha às 14h, pois teve que buscar Sara no mercado perto de casa'),
              nl,write('3. André teve um almoço romântico com sua namorada'),
              nl,write('4. Pedro já estaria aprovado, se as notas da Prova 2 não tivessem sido alteradas'),
              nl,write('Escreva o nome do hacker:'),
              nl,read(Pessoa),
              (Pessoa = 'sara' -> write('Parabéns! O hacker foi jubilado e você conseguiu passar na matéria!'),nl ;
              write('Você falhou em encontrar o hacker e o professor reprovou TODOS!!!'),nl).

termodinamica:-
       nl,write('Agora é hora de enfrentar a disciplina de Termodinâmica'),
       nl,write('Mostre que aprendeu sobre a Lei de Conservação de Energia!'),
       nl,write('Tente não morrer congelado com o frio de junho na FGA e sobreviva até a hora da sua aula'),
       nl,write('1. Ir para RU'),
       nl,write('2. Ir para Obelisco'),
       nl,write('3. Ir para Biblioteca'),
       nl,write('4. Ir para CA'),
       nl,write('5. Ir para minha casa'),
       nl,read(Op),
       (Op =:= 1 -> write('O RU é aberto! Você não conservou seu calor pois foi atingido por uma rajada de vento frio e poeira... Reprovado!'),nl ;
       Op =:= 2 -> write('Você esqueceu que o Obelisco não é um local fechado... Seu calor não foi conservado e você congelou. Reprovado!'),nl ;
       Op =:= 3 -> write('Parabéns! Com a biblioteca fechadinha e todos se escondendo lá, está bem quentinho! Aprovado!!!'),nl ;
       Op =:= 4 -> write('O CA é um lugar bem isolado, mas você esqueceu que ele está fechado e morreu de frio tentando abrir a porta. Que pena, reprovado!'),nl ; 
       Op =:= 5 -> write('Você esqueceu que não podia mais faltar aulas e tomou SR... Triste, né? Reprovado!'),nl).

embarcados:-
       nl,write('Você chegou na matéria de Embarcados!'),
       nl,write('Pra passar é bem simples, você só precisa automatizar sua casa toda!'),
       nl,write('Que bom que você mora sozinho em uma quitinete de 1 cômodo! Vai ser fácil!'),
       nl,write('Escolha o que ligar e em qual ordem: a.televisão, b.forno elétrico e c.iluminação'),
       nl,write('Resposta (exemplo = ac):'),
       Resp1='cba',Resp2='cab',Resp3='cb',Resp4='ca',
       nl,read(Ordem),
       (Ordem = Resp1 -> write('Você ficou assistindo TV com o forno ligado e sua casa pegou fogo! Reprovado!'),nl ;
       Ordem = Resp2 -> write('Você ficou assistindo TV com o forno ligado e sua casa pegou fogo! Reprovado!'),nl ;
       Ordem = Resp3 -> write('Muito bem, você foi aprovado!'),nl ;
       Ordem = Resp4 -> write('Muito bem, você foi aprovado!'), nl ;
       write('Você precisa acender a luz primeiro! Reprovado!'),nl).

pricom:-
       nl,write('Muito é falado sobre como essa matéria é difícil, mas agora é sua vez de descobrir se isso é verdade!'),
       nl,write('Bem vindo à Princípios de Comunicação!'),
       nl,write('Para ser aprovado, você precisa mostrar pro professor que aprendeu'),
       nl,write('1. Tentar colar na prova'),
       nl,write('2. Estudar sem parar'),
       nl,write('3. Estudar de maneira saudável, com pausas para relaxar'),
       nl,read(Esc),
       random(0,1,Sorte),
       (Esc =:= 1,Sorte =:= 1 -> write('Nossa, você teve muita sorte! O professor não te pegou colando e você foi aprovado!') ; 
       Esc =:= 1,Sorte =:= 0 -> write('O professor te pegou colando e resolveu que você merecia um SR. Reprovado! :o') ;
       Esc =:= 2 -> write('Você estudou demais, esqueceu de dormir e se alimentar direito e acabou sendo internado! O professor não aceitou o atestado e você reprovou!') ;
       Esc =:= 3 -> write('Parabéns pelo seu esforço e equilíbrio, você conseguiu! Aprovado!!'),nl).


ted:-
       statistics(runtime,[Start|_]), timeOut(Start).

       timeOut(X) :- Timeout = X + 5, doSomething, totalTime(X).

       totalTime(Z) :- statistics(runtime,[Stop|_]), TotalTime = Stop - Z, avalia(TotalTime).

       avalia(A) :- (A >= 5 -> write('Reprovado!') ; write('(atendeu ao tempo!)')).

       doSomething :- nl,write('Você chegou à Teoria Eletrônica Digital'),
                     nl,write('Vai dar tudo certo, se você for capaz de copiar todo o conteúdo passado no quadro!!!'),
                     nl,write('Copie a frase antes que o professor apague:'),
                     nl,(Quadro='Circuitos Combinacionais não possuem memória'),
                     write(Quadro),nl,
                     read(Frase),
                     (Frase = Quadro ; write('Reprovado!')).


proj_estr_veiculos:-
       nl,write('Agora estamos na matéria de Projeto de Estruturas de Veículos!'),
       nl,write('Você precisa conseguir instalar um simulador pra passar nessa matéria...'),
       nl,write('Escolha o que fazer:'),
       nl,write('1. Usar o simulador no computador da faculdade'),
       nl,write('2. Instalar no meu computador'),
       nl,write('3. Pedir a ajuda de um amigo'),
       nl,read(Num),
       (Num =:= 1 -> write('Você não conseguiu usar o computador o suficiente pra aprender como usar o simulador e foi mal nas provas... Reprovado.') ;
       Num =:= 2 -> write('Clique no link certo para conseguir fazer a instalação'),nl,link ; 
       Num =:= 3 -> write('Seu amigo está ocupado, e agora?'),nl,amigo).

       link:- 
       nl,write('1. www.simulador.com'),
       nl,write('2. www.papodenerd.com'),
       nl,write('3. www.twitter.com'),
       nl,read(Link),
       (Link =:= 1 -> write('Parabéns, você conseguiu! Aprovado :D') ;
       Link =:= 2 -> write('Esse link te encaminhou pra um passo-a-passo de como instalar no Linux e você desistiu quando viu que tinha que abrir o terminal... Reprovado :/') ;
       Link =:= 3 -> write('O professor pegou você distraído e você foi reprovado!'),nl).

       amigo:-
       nl,write('1. Dar um chocolate para ele'),
       nl,write('2. Argumentar que você carregou ele naquela outra matéria'),
       nl,write('3. Tentar baixar sozinho'),
       nl,read(N),
       (N =:= 1 -> write('Você conseguiu convencê-lo a tirar um tempinho e instalar pra você. Parabéns, aprovado!') ;
       N =:= 2 -> write('Seu amigo achou que você foi rude em jogar isso na cara dele e não instalou nada pra você... Reprovado! (e sozinho)'),nl; 
       N =:= 3 -> write('Clique no link certo para conseguir fazer a instalação'),nl,link).

sinais:-
       nl,write('Você chegou a Sinais e Sistemas'),
       nl,write('Vai ter que se esforçar pra passar nessa!'),
       nl,write('Usando os Sinais X e O ganhe o Jogo da Velha'),
       nl,Tabela=[a,a,a,a,a,a,a,a,a],
       mostra([1,2,3,4,5,6,7,8,9]),inicia(Tabela).
       
       win(T, P) :- 
              rwin(T, P);
              cwin(T, P);
              dwin(T, P).

       rwin(T, P) :- 
              T = [P,P,P,_,_,_,_,_,_];
              T = [_,_,_,P,P,P,_,_,_];
       	T = [_,_,_,_,_,_,P,P,P].

       cwin(T, P) :- 
              T = [P,_,_,P,_,_,P,_,_];
              T = [_,P,_,_,P,_,_,P,_];
       	T = [_,_,P,_,_,P,_,_,P].

       dwin(T, P) :- 
              T = [P,_,_,_,P,_,_,_,P];
       	T = [_,_,P,_,P,_,P,_,_].
       
       inicia(T) :- win(T, x), write('Aprovado!').
       inicia(T) :- win(T, o), write('Reprovado!').
       inicia(T) :- 
              read(N),
              xmove(T, N, NewT),
              mostra(NewT),
              oplay(NewT, NewnewT),
              mostra(NewnewT),
              inicia(NewnewT).

       omove([a,B,C,D,E,F,G,H,I], P, [P,B,C,D,E,F,G,H,I]).
       omove([A,a,C,D,E,F,G,H,I], P, [A,P,C,D,E,F,G,H,I]).
       omove([A,B,a,D,E,F,G,H,I], P, [A,B,P,D,E,F,G,H,I]).
       omove([A,B,C,a,E,F,G,H,I], P, [A,B,C,P,E,F,G,H,I]).
       omove([A,B,C,D,a,F,G,H,I], P, [A,B,C,D,P,F,G,H,I]).
       omove([A,B,C,D,E,a,G,H,I], P, [A,B,C,D,E,P,G,H,I]).
       omove([A,B,C,D,E,F,a,H,I], P, [A,B,C,D,E,F,P,H,I]).
       omove([A,B,C,D,E,F,G,a,I], P, [A,B,C,D,E,F,G,P,I]).
       omove([A,B,C,D,E,F,G,H,a], P, [A,B,C,D,E,F,G,H,P]).

       xmove([a,B,C,D,E,F,G,H,I], 1, [x,B,C,D,E,F,G,H,I]).
       xmove([A,a,C,D,E,F,G,H,I], 2, [A,x,C,D,E,F,G,H,I]).
       xmove([A,B,a,D,E,F,G,H,I], 3, [A,B,x,D,E,F,G,H,I]).
       xmove([A,B,C,a,E,F,G,H,I], 4, [A,B,C,x,E,F,G,H,I]).
       xmove([A,B,C,D,a,F,G,H,I], 5, [A,B,C,D,x,F,G,H,I]).
       xmove([A,B,C,D,E,a,G,H,I], 6, [A,B,C,D,E,x,G,H,I]).
       xmove([A,B,C,D,E,F,a,H,I], 7, [A,B,C,D,E,F,x,H,I]).
       xmove([A,B,C,D,E,F,G,a,I], 8, [A,B,C,D,E,F,G,x,I]).
       xmove([A,B,C,D,E,F,G,H,a], 9, [A,B,C,D,E,F,G,H,x]).
       xmove(T, _, T) :- write('Movimento não é possível'), nl.

       mostra([A,B,C,D,E,F,G,H,I]) :-
	       write('|'),
	       write([A,B,C]),write('|'),
              nl,write('|'),
	       write([D,E,F]),write('|'),
              nl,write('|'),
              write([G,H,I]),write('|'),nl,nl.

       can_x_win(T) :- omove(T, x, NewT), win(NewT, x).

       oplay(T,NewT) :-
              omove(T, o, NewT),
              win(NewT, o),!.
       oplay(T,NewT) :-
              omove(T, o, NewT),
              not(can_x_win(NewT)).
       oplay(T,NewT) :-
              omove(T, o, NewT).
       oplay(T,NewT) :-
              not(member(a,T)),!,
              write('Empate'), nl,
              NewT = T.
