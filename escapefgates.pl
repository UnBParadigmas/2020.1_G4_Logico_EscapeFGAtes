:- use_module(library(clpfd)).
:- use_module(library(random)).

%Desenvolvido pela professora

:- dynamic contador/1.

contador(1).

%Minha alteracao
incrementaContador :- contador(X), Y is X, retract(contador(X)), Z is (Y+1), assert(contador(Z)), (X = 3 -> jubilar ; write('Você reprovou '),write(X),write(' vezes')),nl.

mainIncrementa :- incrementaContador.

decrementaContador :- contador(X), Y is X, retract(contador(X)), Z is (Y-1), assert(contador(Z)).

zerar_contador:-retract(contador(_)),assert(contador(1)).

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

jubilar:-nl,write('Você reprovou mais de 3 vezes, você foi Jubilado!'),nl,!,false.


formou_aeroespacial:-write('Parabéns você se formou em Aeroespacial e ganhou o jogo!'),nl,
             write('ESCAPE FGATES: Você se formou!').

formou_automotiva:-write('Parabéns você se formou em Automotiva e ganhou o jogo!'),nl,
             write('ESCAPE FGATES: Você se formou!').

formou_eletronica:-write('Parabéns você se formou em Eletrônica e ganhou o jogo!'),nl,
             write('ESCAPE FGATES: Você se formou!').

formou_energia:-write('Parabéns você se formou em Energia e ganhou o jogo!'),nl,
             write('ESCAPE FGATES: Você se formou!').

formou_software:-write('Parabéns você se formou em Software e ganhou o jogo!'),nl,
             write('ESCAPE FGATES: Você se formou!').

%Ano1

calculo:-nl,write('Seu primeiro desafio, Cálculo, a matéria que é falada por todos os estudantes de engenharia'),nl,
         write('essa matéria pode ser fácil como somar 1 com 2, como também pode ser impossível de se passar, veremos como você irá se sair nessa.'),nl,
         nl,write('Resolva:'),nl,
         write('1 + 2 = ?'),nl,
         write('Resposta: '),
         read(Resposta),
         (Resposta=:=3 -> write('Parabéns por passar em seu primeiro semestre, veremos até quando irá durar.'),nl,zerar_contador,intro_engenharia ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,mainIncrementa,calculo).

intro_engenharia:-nl,write('Você está fazendo Introdução a Engenharia, seu professor te propôs um trabalho simples para que possa ser aprovado'),nl,
                  write('Ele pediu para que você organizasse a tabela de assentos do seu grupo'),nl,
                  write('A tabela serve para saber qual posição cada membro irá ocupar, sabendo que cada mês os membros devem mudar de lugar'),nl,
                  write('Por você estar no primeiro semestre o professor facilitou e pediu para você apenas terminar a tabela já feita.'),nl,
                  write('A forma de organizar te lembra um sudoku de 4x4'),nl,
                  write('Sabendo que no seu grupo tem o Andre, a Sara, o Gabriel e o Pedro'),nl,
                  write('E que cada um corresponde respectivamente aos numeros 1, 2, 3 e 4, e que você como lider não participa dessa organização'),nl,
                  write('Organize a tabela em forma de lista: '),nl,
                  write('exemplo: [1,2,3,4,1,2,3,4,1,2,3,4,1,2,3,4]'),nl,
                  write('Tabela:'),nl,
                  write('4 1 ? ?'),nl,
                  write('2 3 4 1'),nl,
                  write('1 2 3 4'),nl,
                  write('? ? 1 2'),nl,
                  write('Lembrando que a resposta deve conter todos os valores, e não apenas os números que faltam'),nl,
                  Resposta = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2],
                  read(Lista),
                  (Lista = Resposta -> write('Parabéns a lista está correta! você foi aprovado!'),ferias(1) ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,mainIncrementa,intro_engenharia).

%Férias - Tronco Comum

ferias(1):-nl,write('Parabéns por sobreviver esse primeiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 2 te aguarda!'),nl, curso.

%Férias - Aeroespacial

ferias_aeroespacial(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl,termodinamica.

ferias_aeroespacial(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl,mecflu.

ferias_aeroespacial(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Automotiva

ferias_automotiva(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias_automotiva(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias_automotiva(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Eletrônica

ferias_eletronica(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias_eletronica(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias_eletronica(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Energia

ferias_energia(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias_energia(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias_energia(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Software

ferias_software(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias_software(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias_software(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Escolha de curso

curso:- write('Depois de enfrentar seu primeiro ano você terá a oportunidade de fazer a escolha do seu curso, você tem 5 opções: '),nl,
        write('1 - Aeroespacial;'),nl,
        write('2 - Automotiva;'),nl,
        write('3 - Eletrônica;'),nl,
        write('4 - Energia;'),nl,
        write('5 - Software'),nl,
        write('Informe o número do curso que deseja se formar: '),nl,
        read(Escolha),
        (Escolha =:= 1 -> write('Você escolheu cursar Aeroespacial! Boa sorte e bom curso!'),nl ,eletromag_aeroespacial
        ; Escolha =:= 2 -> write('Você escolheu cursar Automotiva! Boa sorte e bom curso!'),nl,eletromag_automotiva
        ; Escolha =:= 3 -> write('Você escolheu cursar Eletrônica! Boa sorte e bom curso!'),nl,eletromag_eletronica
        ; Escolha =:= 4 -> write('Você escolheu cursar Energia! Boa sorte e bom curso!'),nl,eletromag_energia
        ; Escolha =:= 5 -> write('Você escolheu cursar Software! Boa sorte e bom curso!'),nl).

%Ano2

eletromag_aeroespacial:-write('Parabéns, por causa da escolha do seu curso, você veio para Eletromagnetismo, ou como gostam de chamar, eletromag'),nl,
           write('Nessa matéria você precisará de um bom grupo e de um bom lugar para desenvolver seu trabalho'),nl,
           write('Você vai para as famosas mesinhas em frente ao laboratório de física, mas percebe que há um outro grupo ocupando os lugares'),nl,
           write('Existem 8 tomadas no local, porém só metade delas funciona'),nl,
           write('Por isso seu desafio é, escolher a tomada que funciona para terminar seu trabalho'),nl,
           write('Se você errar, não terminará o trabalho e você e seu grupo irão reprovar'),nl,
           nl,write('Qual tomada você irá escolher'),nl,
           read(Tomada),
           (Tomada =:= 1 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sa 
           ; Tomada =:= 3 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sa
           ; Tomada =:= 4 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sa
           ; Tomada =:= 6 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sa
           ; write('Você escolheu uma tomada que não funcionava, você e seu grupo reprovaram!'),nl,mainIncrementa,eletromag_aeroespacial).

eletromag_automotiva:-write('Parabéns, por causa da escolha do seu curso, você veio para Eletromagnetismo, ou como gostam de chamar, eletromag'),nl,
           write('Nessa matéria você precisará de um bom grupo e de um bom lugar para desenvolver seu trabalho'),nl,
           write('Você vai para as famosas mesinhas em frente ao laboratório de física, mas percebe que há um outro grupo ocupando os lugares'),nl,
           write('Existem 8 tomadas no local, porém só metade delas funciona'),nl,
           write('Por isso seu desafio é, escolher a tomada que funciona para terminar seu trabalho'),nl,
           write('Se você errar, não terminará o trabalho e você e seu grupo irão reprovar'),nl,
           nl,write('Qual tomada você irá escolher'),nl,
           read(Tomada),
           (Tomada =:= 1 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sauto 
           ; Tomada =:= 3 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sauto
           ; Tomada =:= 4 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sauto
           ; Tomada =:= 6 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador,sauto
           ; write('Você escolheu uma tomada que não funcionava, você e seu grupo reprovaram!'),nl,mainIncrementa,eletromag_automotiva).

eletromag_eletronica:-write('Parabéns, por causa da escolha do seu curso, você veio para Eletromagnetismo, ou como gostam de chamar, eletromag'),nl,
           write('Nessa matéria você precisará de um bom grupo e de um bom lugar para desenvolver seu trabalho'),nl,
           write('Você vai para as famosas mesinhas em frente ao laboratório de física, mas percebe que há um outro grupo ocupando os lugares'),nl,
           write('Existem 8 tomadas no local, porém só metade delas funciona'),nl,
           write('Por isso seu desafio é, escolher a tomada que funciona para terminar seu trabalho'),nl,
           write('Se você errar, não terminará o trabalho e você e seu grupo irão reprovar'),nl,
           nl,write('Qual tomada você irá escolher'),nl,
           read(Tomada),
           (Tomada =:= 1 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador 
           ; Tomada =:= 3 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador
           ; Tomada =:= 4 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador
           ; Tomada =:= 6 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador
           ; write('Você escolheu uma tomada que não funcionava, você e seu grupo reprovaram!'),nl,mainIncrementa,eletromag_eletronica).

eletromag_energia:-write('Parabéns, por causa da escolha do seu curso, você veio para Eletromagnetismo, ou como gostam de chamar, eletromag'),nl,
           write('Nessa matéria você precisará de um bom grupo e de um bom lugar para desenvolver seu trabalho'),nl,
           write('Você vai para as famosas mesinhas em frente ao laboratório de física, mas percebe que há um outro grupo ocupando os lugares'),nl,
           write('Existem 8 tomadas no local, porém só metade delas funciona'),nl,
           write('Por isso seu desafio é, escolher a tomada que funciona para terminar seu trabalho'),nl,
           write('Se você errar, não terminará o trabalho e você e seu grupo irão reprovar'),nl,
           nl,write('Qual tomada você irá escolher'),nl,
           read(Tomada),
           (Tomada =:= 1 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador 
           ; Tomada =:= 3 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador
           ; Tomada =:= 4 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador
           ; Tomada =:= 6 -> write('Parabéns você escolheu uma das tomadas certas! Aprovado!'),nl,zerar_contador
           ; write('Você escolheu uma tomada que não funcionava, você e seu grupo reprovaram!'),nl,mainIncrementa,eletromag_energia).

sauto:-     write('Você esta cursando a materia de Sistemas Automotivos e precisa ajudar seu amigo a comprar um carro seminovo, 
                   ponha seus conhecimentos em pratica, inspecione os carros e escolha aquele que nao tem nenhum problema!!!'
            ),nl,carro1.
carro1:- nl,write('Carro 1: '),nl,
         write('1 - Olhar freio'),nl,
         write('2 - Olhar motor'),nl,
         write('3 - Olhar rodas'),nl,
         write('4 - Olhar painel'),nl,
         write('5 - Olhar Vida'),nl,
         read(Escolha1),nl,
         (Escolha1 \== 1 -> write('Nada aqui!'),nl,carro1 ; write('Voce notou um problema no freio! Pera, o carro nao possui o pedal??')),nl,carro2.
carro2:- nl,write('Carro 2: '),nl,
         write('1 - Olhar freio'),nl,
         write('2 - Olhar motor'),nl,
         write('3 - Olhar rodas'),nl,
         write('4 - Olhar painel'),nl,
         write('5 - Olhar Vida'),nl,
         read(Escolha2),nl,
         (Escolha2 \== 3 -> write('Nada aqui!'),nl,carro2 ; write('Voce notou que o carro nao possui rodas...')),nl,carro3.
carro3:- nl,write('Carro 3: '),nl,
         write('1 - Olhar freio'),nl,
         write('2 - Olhar motor'),nl,
         write('3 - Olhar rodas'),nl,
         write('4 - Olhar painel'),nl,
         write('5 - Olhar Vida'),nl,
         read(Escolha3),nl,
         (Escolha3 \== 5 -> write('Nada aqui!'),nl,carro3 ; write('Voce notou que a Vida do carro foi trocada por um tijolo...')),nl,carro4.
carro4:- nl,write('Carro 4: '),nl,
         write('1 - Olhar freio'),nl,
         write('2 - Olhar motor'),nl,
         write('3 - Olhar rodas'),nl,
         write('4 - Olhar painel'),nl,
         write('5 - Olhar Vida'),nl,
         read(Escolha4),nl,
         (Escolha4 \== 3 -> write('Nada aqui!'),nl,carro4 ; write('Voce notou que as rodas do carro estao estranhamente quadradas...')),nl,carro5.
carro5:- nl,write('Carro 5: '),nl,
         write('1 - Olhar freio'),nl,
         write('2 - Olhar motor'),nl,
         write('3 - Olhar rodas'),nl,
         write('4 - Olhar painel'),nl,
         write('5 - Olhar Vida'),nl,
         read(Escolha5),nl,
         (Escolha5 \== 5 -> write('Nada aqui!'),nl,carro5 ; write('Voce cansou de procurar algo nesse carro..')),nl,carro6.  
carro6:- nl,write('Carro 6: '),nl,
         write('1 - Olhar freio'),nl,
         write('2 - Olhar motor'),nl,
         write('3 - Olhar rodas'),nl,
         write('4 - Olhar painel'),nl,
         write('5 - Olhar Vida'),nl,
         read(Escolha6),nl,
         (Escolha6 \== 2 -> write('Nada aqui!'),nl,carro6 ; write('Voce notou que esse carro... Nao possui motor???')),nl,escolha.    
escolha:- nl,write('Agora que viu todas as opcoes, escolha o carro!!'),nl,
          write('1 - Carro 1'),nl,
          write('2 - Carro 2'),nl,
          write('3 - Carro 3'),nl,
          write('4 - Carro 4'),nl,
          write('5 - Carro 5'),nl,
          write('6 - Carro 6'),nl,
          read(EscolhaFinal),nl,
          (EscolhaFinal \== 5 -> write('Seu amigo comprou o carro com defeito, o professor ficou sabendo e voce foi reprovado!'),nl,mainIncrementa,sauto; write('Parabens!! Agora voce tem carona e a aprovacao naa disciplina!!')),nl,zerar_contador.

sa:- nl,write('Você esta cursando a materia de Sistemas Aeroespaciais, fez um aviaozinho de papel para a materia e agora precisa jogar'),nl,
    write('Jogue o aviaozinho na oportunidade correta e evite que ele quebre!!!'),nl,
    nl,write('Oportunidade 1 - Sem vento e chovendo'),nl,
    write('Oportunidade 2 - Muito vento e ensolarado'),nl,
    write('Oportunidade 3 - Muito vento e chovendo'),nl,
    write('Oportunidade 4 - Sem vento e ensolarado'),nl,
    write('Oportunidade 5- Pouco vento e chovendo'),nl,
    read(Escolha),nl,
    (
        Escolha == 1 -> write('Choveu no seu aviaozinho e ele ficou encharcado... Reprovado.'),mainIncrementa,sa,nl; 
        Escolha == 2 -> write('O vento levou seu aviaozinho ate a ponte alta... Reprovado.'),mainIncrementa,sa,nl; 
        Escolha == 3 -> write('Voce foi inteligente e testou dentro do auditorio, parabens! Aprovado!'),nl,zerar_contador,ferias_aeroespacial(2); 
        Escolha == 4 -> write('O clima estava perfeito, mas sua mira nao... O aviaozinho bateu na parede e desmontou... Reprovado.'),mainIncrementa,sa,nl; 
        Escolha == 5 -> write('Tinha tudo pra dar errado... E deu! Reprovado.'),mainIncrementa,sa,nl
    ).

eda:-
       nl,write('Agora você está em Estruturas de Dados!'),
       nl,write('Prove que está prestando atenção nas aulas e ordene a lista a seguir:'),
       nl,write('[13,22,0,3,23,9,45,20]'),nl,
       Resposta = [0,3,9,13,20,22,23,45],
       read(Lista),
       (Lista = Resposta -> write('Essa foi fácil... Aprovado!'),nl,zerar_contador ; write('Que pena, você reprovou!'),nl,mainIncrementa,eda).

%Ano3

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
       
       inicia(T) :- win(T, x), write('Aprovado!'),zerar_contador.
       inicia(T) :- win(T, o), write('Reprovado!'),mainIncrementa,sinais.
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
       (Op =:= 1 -> write('O RU é aberto! Você não conservou seu calor pois foi atingido por uma rajada de vento frio e poeira... Reprovado!'),nl,mainIncrementa,termodinamica ;
       Op =:= 2 -> write('Você esqueceu que o Obelisco não é um local fechado... Seu calor não foi conservado e você congelou. Reprovado!'),nl,mainIncrementa,termodinamica ;
       Op =:= 3 -> write('Parabéns! Com a biblioteca fechadinha e todos se escondendo lá, está bem quentinho! Aprovado!!!'),nl,zerar_contador ;
       Op =:= 4 -> write('O CA é um lugar bem isolado, mas você esqueceu que ele está fechado e morreu de frio tentando abrir a porta. Que pena, reprovado!'),nl,mainIncrementa,termodinamica ; 
       Op =:= 5 -> write('Você esqueceu que não podia mais faltar aulas e tomou SR... Triste, né? Reprovado!'),nl,mainIncrementa,termodinamica).

fisica_moderna :- write('Você chegou a física moderna, dentre as físicas é a mais atual, e por isso a mais complexa'),nl,
                  write('Para passar basta responder a pergunta, o gato de Schrödinger está: '),nl,
                  write('1- Vivo;'),nl,
                  write('2- Morto;'),nl,
                  write('Sua resposta:  '),nl,
                  read(Resposta),
                  random(0, 100, Resultado_vivo),write(Resultado_vivo),nl,
                  random(0, 100, Resultado_morto),write(Resultado_morto),nl,
                  (Resposta =:= 1, Resultado_vivo >= Resultado_morto -> write('Certo o gato tem mais chance de estar vivo!'),nl,write('Aprovado!'),zerar_contador 
                  ; Resposta =:= 2, Resultado_morto >= Resultado_vivo -> write('Certo o gato tem mais chance de estar morto!'),nl,write('Aprovado!'),zerar_contador
                  ; write('Reprovado! Terá que fazer a matéria novamente!'),nl,mainIncrementa, fisica_moderna).


fso:- write('Você chegou em FSO - Fundamentos de Sistemas Operacionais'),nl,
      write('Para você passar é simples digite o nome do melhor sistema operacional'),nl,
      write('Não se esqueça de usar as aspas simples para escrever'),nl,
      write('Sua resposta: '),read(Resposta),nl,
      (Resposta = 'Linux' -> write('Aprovado!'),nl,zerar_contador ; write('Reprovado!'),nl,mainIncrementa,fso).

design:- nl,write('Você esta cursando a materia de Design de veiculos e precisa responder uma pergunta pra passar!'),nl,
         write('O que um time de futebol e um carro tem em comum?'),nl,
         read(Resposta),nl,
        (Resposta = 'volante' -> write('Aprovado!'),nl,zerar_contador ; Resposta = 'Volante' -> write('Aprovado'),nl,zerar_contador ; write('Reprovado!'),nl,mainIncrementa,design).

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

%Ano4

subtractor_bateria(Bateria, Celular) :- Bateria - 20 #= Celular, write(Celular).
counter_bateria(Bateria, Celular) :- Bateria + 0 #= Celular,write(Celular).

economia_energia:- write('Bem-vindo(a) a matéria de Economia de Energia, para passar basta não deixar seu celular descarregar.'),nl,
                   write('Para isso você terá que escolher que aplicativos você irá fechar, cada aplicativo consome uma porcentagem de energia'),nl,
                   write('Faça a escolha certa e evite que seu celular descarregue!'),nl,
                   write('1º round:'),nl,
                   write('1- Youtube'),nl,
                   write('2- Spotify'),nl,
                   read(Aplicativo1),(Aplicativo1 =:= 2 -> write('Bateria: '),Bateria1 = 100,subtractor_bateria(Bateria1, Celular1),write('%') ; write('Bateria: '),Bateria1 = 100,counter_bateria(Bateria1, Celular1),write('%')),nl,
                   write('2º round:'),nl,
                   write('1- Instagram'),nl,
                   write('2- Snapchat'),nl,
                   read(Aplicativo2),(Aplicativo2 =:= 2 -> write('Bateria: '),subtractor_bateria(Celular1, Celular2),write('%') ; write('Bateria: '),counter_bateria(Celular1, Celular2),write('%')),nl,
                   write('3º round:'),nl,
                   write('1- Twitter'),nl,
                   write('2- Whatsapp'),nl,
                   read(Aplicativo3),(Aplicativo3 =:= 1 -> write('Bateria: '),subtractor_bateria(Celular2, Celular3),write('%') ; write('Bateria: '),counter_bateria(Celular2, Celular3),write('%')),nl,
                   write('4º round:'),nl,
                   write('1- Facebook'),nl,
                   write('2- Reddit'),nl,
                   read(Aplicativo4),(Aplicativo4 =:= 2 -> write('Bateria: '),subtractor_bateria(Celular3, Celular4),write('%') ; write('Bateria: '),counter_bateria(Celular3, Celular4),write('%')),nl,
                   write('5º round:'),nl,
                   write('1- Netflix'),nl,
                   write('2- Google Chrome'),nl,
                   read(Aplicativo5),(Aplicativo5 =:= 1 -> write('Bateria: '),subtractor_bateria(Celular4, Celular5),write('%'),nl ; write('Bateria: '),counter_bateria(Celular4, Celular5),write('%')),nl,
                   (Celular5 =< 0 -> write('Reprovado! Terá que fazer a matéria novamente!'),nl,mainIncrementa,economia_energia ; write('Aprovado!'),zerar_contador).


bd:- nl,write('Você esta cursando a materia de Bancos de dados e percebeu que salvou o nome de um usuario sem a senha!!'),nl,
     write('Tente descobrir a senha do usuario para poder entregar o trabalho final!!'),nl,senha.
senha:-     write('Senha criptografada = cbodp'),nl,
            write('Dica: A senha esta muito mais perto do que voce imagina!!'),nl,
            write('Se precisar de dicas sobre a cifra, escreva '),write(' cola '),write(' ou '),write(' dica '),write(' na resposta'),nl,
            read(Senha),nl,
            (Senha \== 'banco', Senha \== 'cola', Senha \== 'dica' -> write('Senha errada, faca a materia de novo..'),nl,mainIncrementa,bd
            ; Senha == 'banco' -> write('Aprovado!'),nl,zerar_contador
            ; Senha == 'cola' -> write('O professor pegou voce colando... Reprovado!!!'),nl,mainIncrementa,bd
            ; Senha == 'dica' -> write('Dica final: a+1, b+1, c+1,...'),nl,senha
            ).

mecflu:- nl,write('Enquanto você esta cursando a materia de Mecanica dos Fluidos, e chegou na prova final.'),nl,
         write('Você abre a prova e ve apenas uma questao, fica nervoso, MUITO nervoso porque nao sabe responder e decide chtar...'),nl,
         write('A questao eh: '),nl,
         write('Você fecha a torneira enquanto escova os dentes?'),nl,
         write('1 - sim'),nl,
         write('2 - nao'),nl,
         read(Escolha),nl,
        (Escolha \== 1 -> write('Você chutou errado... Reprovado!'),mainIncrementa,mecflu,nl ; write('Você deu a sorte no chute! Aprovado!!'),zerar_contador,eletricidade_aeroespacial).

eletricidade_aeroespacial:-write('Bem-vindo(a) a eletricidade!'),nl,
              write('Nessa matéria você terá que ligar todos as luzes da sala, em apenas 4 movimentos, você sabe que:'),nl,
              write('As luzes da sala estão desligadas'),nl,
              write('A sala possui 4 interruptores correspondendo as 5 luzes na sala, cada uma atua de uma maneira diferente;'),nl,
              write('interruptor 1 - liga a luz 1'),nl,
              write('interruptor 2 - liga as luzes 1, 2 e 5'),nl,
              write('interruptor 3 - liga as luzes 3 e 4, e desliga a luz 4 caso ela esteja ligada'),nl,
              write('interruptor 4 - liga a luz 4'),nl,
              write('Suas respostas: '),nl,
              nl,write('Escolha 1: '),read(Escolha1),nl,
              (Escolha1 \== 4 -> write('Reprovado'),nl,mainIncrementa,eletricidade_aeroespacial ; write('Escolha 1 correta!')),nl,
              write('Escolha 2: '),read(Escolha2),nl,
              (Escolha2 \== 2 -> write('Reprovado'),nl,mainIncrementa,eletricidade_aeroespacial ; write('Escolha 2 correta!')),nl,
              write('Escolha 3: '),read(Escolha3),nl,
              (Escolha3 \== 3 -> write('Reprovado'),nl,mainIncrementa,eletricidade_aeroespacial ; write('Escolha 3 correta!')),nl,
              write('Escolha 4: '),read(Escolha4),nl,
              (Escolha4 \== 4 -> write('Reprovado'),nl,mainIncrementa,eletricidade_aeroespacial ; write('Escolha 4 correta!')),nl,
              write('Parabéns você foi aprovado!'),nl,zerar_contador,ferias_aeroespacial(4).

eletricidade_automotiva:-write('Bem-vindo(a) a eletricidade!'),nl,
              write('Nessa matéria você terá que ligar todos as luzes da sala, em apenas 4 movimentos, você sabe que:'),nl,
              write('As luzes da sala estão desligadas'),nl,
              write('A sala possui 4 interruptores correspondendo as 5 luzes na sala, cada uma atua de uma maneira diferente;'),nl,
              write('interruptor 1 - liga a luz 1'),nl,
              write('interruptor 2 - liga as luzes 1, 2 e 5'),nl,
              write('interruptor 3 - liga as luzes 3 e 4, e desliga a luz 4 caso ela esteja ligada'),nl,
              write('interruptor 4 - liga a luz 4'),nl,
              write('Suas respostas: '),nl,
              nl,write('Escolha 1: '),read(Escolha1),nl,
              (Escolha1 \== 4 -> write('Reprovado'),nl,mainIncrementa,eletricidade_automotiva ; write('Escolha 1 correta!')),nl,
              write('Escolha 2: '),read(Escolha2),nl,
              (Escolha2 \== 2 -> write('Reprovado'),nl,mainIncrementa,eletricidade_automotiva ; write('Escolha 2 correta!')),nl,
              write('Escolha 3: '),read(Escolha3),nl,
              (Escolha3 \== 3 -> write('Reprovado'),nl,mainIncrementa,eletricidade_automotiva ; write('Escolha 3 correta!')),nl,
              write('Escolha 4: '),read(Escolha4),nl,
              (Escolha4 \== 4 -> write('Reprovado'),nl,mainIncrementa,eletricidade_automotiva ; write('Escolha 4 correta!')),nl,
              write('Parabéns você foi aprovado!'),nl,zerar_contador.
              
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
              (Pessoa = 'sara' -> write('Parabéns! O hacker foi jubilado e você conseguiu passar na matéria!'),nl,zerar_contador ;
              write('Você falhou em encontrar o hacker e o professor reprovou TODOS!!!'),nl,mainIncrementa,redes).

%Ano5

sist_hidro:-write('Você chegou a Sistemas Hidroelétricos'),nl,
            write('Por conta do conteúdo ensinando você deverá ir ao laboratório, poreḿ antes de ir você esta com sede'),nl,
            write('Os bebedouros da FGA funcionam de uma maneira diferente, ou você bebe água ou você toma um banho'),nl,
            write('Seu desafio é ir para o laboratório sem estar encharcado'),nl,
            write('Por isso escolha o bebedouro com cuidado: '),nl,
            write('1- Bebedouro 1'),nl,
            write('2- Bebedouro 2'),nl,
            write('3- Bebedouro 3'),nl,
            write('4- Bebedouro 4'),nl,
            write('5- Bebedouro 5'),nl,
            write('6- Bebedouro 6'),nl,
            write('7- Bebedouro 7'),nl,
            write('8- Bebedouro 8'),nl,
            read(Bebedouro),nl,
            (Bebedouro =:= 3 -> write('Parabéns você escolheu o bebedouro com gosto de ferro, mas que não te dá um banho. Aprovado!'),nl,zerar_contador,tcc_energia
            ; Bebedouro =:= 6 -> write('Parabéns você escolheu o bebedouro que não sai quase nada de água, mas que não te dá um banho. Aprovado!'),nl,zerar_contador,tcc_energia
            ; write('Infelizmente o bebedouro de encharcou e você foi reprovado!'),nl,mainIncrementa,sist_hidro).


embarcados:-
       nl,write('Você chegou na matéria de Embarcados!'),
       nl,write('Pra passar é bem simples, você só precisa automatizar sua casa toda!'),
       nl,write('Que bom que você mora sozinho em uma quitinete de 1 cômodo! Vai ser fácil!'),
       nl,write('Escolha o que ligar e em qual ordem: a.televisão, b.forno elétrico e c.iluminação'),
       nl,write('Resposta (exemplo = ac):'),
       Resp1='cba',Resp2='cab',Resp3='cb',Resp4='ca',
       nl,read(Ordem),
       (Ordem = Resp1 -> write('Você ficou assistindo TV com o forno ligado e sua casa pegou fogo! Reprovado!'),nl,mainIncrementa,redes ;
       Ordem = Resp2 -> write('Você ficou assistindo TV com o forno ligado e sua casa pegou fogo! Reprovado!'),nl,mainIncrementa,redes ;
       Ordem = Resp3 -> write('Muito bem, você foi aprovado!'),nl,zerar_contador ;
       Ordem = Resp4 -> write('Muito bem, você foi aprovado!'), nl,zerar_contador ;
       write('Você precisa acender a luz primeiro! Reprovado!'),nl,mainIncrementa,embarcados).
       
pricom:-
       nl,write('Muito é falado sobre como essa matéria é difícil, mas agora é sua vez de descobrir se isso é verdade!'),
       nl,write('Bem vindo à Princípios de Comunicação!'),
       nl,write('Para ser aprovado, você precisa mostrar pro professor que aprendeu'),
       nl,write('1. Tentar colar na prova'),
       nl,write('2. Estudar sem parar'),
       nl,write('3. Estudar de maneira saudável, com pausas para relaxar'),
       nl,read(Esc),
       random(0,1,Sorte),
       (Esc =:= 1,Sorte =:= 1 -> write('Nossa, você teve muita sorte! O professor não te pegou colando e você foi aprovado!'),nl,zerar_contador ; 
       Esc =:= 1,Sorte =:= 0 -> write('O professor te pegou colando e resolveu que você merecia um SR. Reprovado! :o'),nl,mainIncrementa,pricom  ;
       Esc =:= 2 -> write('Você estudou demais, esqueceu de dormir e se alimentar direito e acabou sendo internado! O professor não aceitou o atestado e você reprovou!'),nl,mainIncrementa,pricom ;
       Esc =:= 3 -> write('Parabéns pelo seu esforço e equilíbrio, você conseguiu! Aprovado!!'),nl,zerar_contador).
       
proj_estr_veiculos:-
       nl,write('Agora estamos na matéria de Projeto de Estruturas de Veículos!'),
       nl,write('Você precisa conseguir instalar um simulador pra passar nessa matéria...'),
       nl,write('Escolha o que fazer:'),
       nl,write('1. Usar o simulador no computador da faculdade'),
       nl,write('2. Instalar no meu computador'),
       nl,write('3. Pedir a ajuda de um amigo'),
       nl,read(Num),
       (Num =:= 1 -> write('Você não conseguiu usar o computador o suficiente pra aprender como usar o simulador e foi mal nas provas... Reprovado.'),nl,mainIncrementa,proj_estr_veiculos ;
       Num =:= 2 -> write('Clique no link certo para conseguir fazer a instalação'),nl,link ; 
       Num =:= 3 -> write('Seu amigo está ocupado, e agora?'),nl,amigo).

       link:- 
       nl,write('1. www.simulador.com'),
       nl,write('2. www.papodenerd.com'),
       nl,write('3. www.twitter.com'),
       nl,read(Link),
       (Link =:= 1 -> write('Parabéns, você conseguiu! Aprovado :D'),nl,zerar_contador ;
       Link =:= 2 -> write('Esse link te encaminhou pra um passo-a-passo de como instalar no Linux e você desistiu quando viu que tinha que abrir o terminal... Reprovado :/'),nl,mainIncrementa,proj_estr_veiculos ;
       Link =:= 3 -> write('O professor pegou você distraído e você foi reprovado!'),nl,mainIncrementa,proj_estr_veiculos).

       amigo:-
       nl,write('1. Dar um chocolate para ele'),
       nl,write('2. Argumentar que você carregou ele naquela outra matéria'),
       nl,write('3. Tentar baixar sozinho'),
       nl,read(N),
       (N =:= 1 -> write('Você conseguiu convencê-lo a tirar um tempinho e instalar pra você. Parabéns, aprovado!'),nl,zerar_contador ;
       N =:= 2 -> write('Seu amigo achou que você foi rude em jogar isso na cara dele e não instalou nada pra você... Reprovado! (e sozinho)'),nl,mainIncrementa,proj_estr_veiculos; 
       N =:= 3 -> write('Clique no link certo para conseguir fazer a instalação'),nl,link).


tcc_aeroespacial:-nl,write('Você está prestes a se formar, porém deve enfrentar seu último desafio: O TCC'),nl,
     write('O desafio é simples, escolha um orientador com horário suficiente para te atender'),nl,
     write('Será que você terá sorte de escolher o certo?!'),nl,
     write('Escolha:'),nl,
     write('1- Orientador1'),nl,
     random(0, 50, Orientador1),
     write('2- Orientador2'),nl,
     random(0, 50, Orientador2),
     write('3- Orientador3'),nl,
     random(0, 50, Orientador3),
     write('4- Orientador4'),nl,
     random(0, 50, Orientador4),
     read(Escolha),
     (Escolha =:= 1, Orientador1 > Orientador2, Orientador1 > Orientador3, Orientador1 > Orientador4 -> write('Aprovado!'),zerar_contador,nl 
     ; Escolha =:= 2, Orientador2 > Orientador1, Orientador2 > Orientador3, Orientador2 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 3, Orientador3 > Orientador1, Orientador3 > Orientador2, Orientador3 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 4, Orientador4 > Orientador1, Orientador4 > Orientador2, Orientador4 > Orientador3 -> write('Aprovado!'),zerar_contador,nl
     ; write('Você escolheu um orientador sem tempo algum, ele não pode te ajudar e você acabou reprovando'),nl,mainIncrementa,tcc_aeroespacial).

tcc_automotiva:-nl,write('Você está prestes a se formar, porém deve enfrentar seu último desafio: O TCC'),nl,
     write('O desafio é simples, escolha um orientador com horário suficiente para te atender'),nl,
     write('Será que você terá sorte de escolher o certo?!'),nl,
     write('Escolha:'),nl,
     write('1- Orientador1'),nl,
     random(0, 50, Orientador1),
     write('2- Orientador2'),nl,
     random(0, 50, Orientador2),
     write('3- Orientador3'),nl,
     random(0, 50, Orientador3),
     write('4- Orientador4'),nl,
     random(0, 50, Orientador4),
     read(Escolha),
     (Escolha =:= 1, Orientador1 > Orientador2, Orientador1 > Orientador3, Orientador1 > Orientador4 -> write('Aprovado!'),zerar_contador,nl 
     ; Escolha =:= 2, Orientador2 > Orientador1, Orientador2 > Orientador3, Orientador2 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 3, Orientador3 > Orientador1, Orientador3 > Orientador2, Orientador3 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 4, Orientador4 > Orientador1, Orientador4 > Orientador2, Orientador4 > Orientador3 -> write('Aprovado!'),zerar_contador,nl
     ; write('Você escolheu um orientador sem tempo algum, ele não pode te ajudar e você acabou reprovando'),nl,mainIncrementa,tcc_automotiva).

tcc_eletronica:-nl,write('Você está prestes a se formar, porém deve enfrentar seu último desafio: O TCC'),nl,
     write('O desafio é simples, escolha um orientador com horário suficiente para te atender'),nl,
     write('Será que você terá sorte de escolher o certo?!'),nl,
     write('Escolha:'),nl,
     write('1- Orientador1'),nl,
     random(0, 50, Orientador1),
     write('2- Orientador2'),nl,
     random(0, 50, Orientador2),
     write('3- Orientador3'),nl,
     random(0, 50, Orientador3),
     write('4- Orientador4'),nl,
     random(0, 50, Orientador4),
     read(Escolha),
     (Escolha =:= 1, Orientador1 > Orientador2, Orientador1 > Orientador3, Orientador1 > Orientador4 -> write('Aprovado!'),zerar_contador,nl 
     ; Escolha =:= 2, Orientador2 > Orientador1, Orientador2 > Orientador3, Orientador2 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 3, Orientador3 > Orientador1, Orientador3 > Orientador2, Orientador3 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 4, Orientador4 > Orientador1, Orientador4 > Orientador2, Orientador4 > Orientador3 -> write('Aprovado!'),zerar_contador,nl
     ; write('Você escolheu um orientador sem tempo algum, ele não pode te ajudar e você acabou reprovando'),nl,mainIncrementa,tcc_eletronica).

tcc_energia:-nl,write('Você está prestes a se formar, porém deve enfrentar seu último desafio: O TCC'),nl,
     write('O desafio é simples, escolha um orientador com horário suficiente para te atender'),nl,
     write('Será que você terá sorte de escolher o certo?!'),nl,
     write('Escolha:'),nl,
     write('1- Orientador1'),nl,
     random(0, 50, Orientador1),
     write('2- Orientador2'),nl,
     random(0, 50, Orientador2),
     write('3- Orientador3'),nl,
     random(0, 50, Orientador3),
     write('4- Orientador4'),nl,
     random(0, 50, Orientador4),
     read(Escolha),
     (Escolha =:= 1, Orientador1 > Orientador2, Orientador1 > Orientador3, Orientador1 > Orientador4 -> write('Aprovado!'),zerar_contador,nl 
     ; Escolha =:= 2, Orientador2 > Orientador1, Orientador2 > Orientador3, Orientador2 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 3, Orientador3 > Orientador1, Orientador3 > Orientador2, Orientador3 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 4, Orientador4 > Orientador1, Orientador4 > Orientador2, Orientador4 > Orientador3 -> write('Aprovado!'),zerar_contador,nl
     ; write('Você escolheu um orientador sem tempo algum, ele não pode te ajudar e você acabou reprovando'),nl,mainIncrementa,tcc_energia).

tcc_software:-nl,write('Você está prestes a se formar, porém deve enfrentar seu último desafio: O TCC'),nl,
     write('O desafio é simples, escolha um orientador com horário suficiente para te atender'),nl,
     write('Será que você terá sorte de escolher o certo?!'),nl,
     write('Escolha:'),nl,
     write('1- Orientador1'),nl,
     random(0, 50, Orientador1),
     write('2- Orientador2'),nl,
     random(0, 50, Orientador2),
     write('3- Orientador3'),nl,
     random(0, 50, Orientador3),
     write('4- Orientador4'),nl,
     random(0, 50, Orientador4),
     read(Escolha),
     (Escolha =:= 1, Orientador1 > Orientador2, Orientador1 > Orientador3, Orientador1 > Orientador4 -> write('Aprovado!'),zerar_contador,nl 
     ; Escolha =:= 2, Orientador2 > Orientador1, Orientador2 > Orientador3, Orientador2 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 3, Orientador3 > Orientador1, Orientador3 > Orientador2, Orientador3 > Orientador4 -> write('Aprovado!'),zerar_contador,nl
     ; Escolha =:= 4, Orientador4 > Orientador1, Orientador4 > Orientador2, Orientador4 > Orientador3 -> write('Aprovado!'),zerar_contador,nl
     ; write('Você escolheu um orientador sem tempo algum, ele não pode te ajudar e você acabou reprovando'),nl,mainIncrementa,tcc_software).