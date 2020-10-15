:- use_module(library(clpfd)).
:- use_module(library(random)).

%Desenvolvido pela professora

:- dynamic contador/1.

contador(0).

%Minha alteracao
incrementaContador :- contador(X), Y is X, retract(contador(X)), Z is (Y+1), assert(contador(Z)), (X = 3 -> jubilar ; write('Você reprovou '),write(X),write(' vezes')),nl.

mainIncrementa :- incrementaContador.

decrementaContador :- contador(X), Y is X, retract(contador(X)), Z is (Y-1), assert(contador(Z)).

zerar_contador :- retract(contador(X)),assert(contador(0)).

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
         (Resposta=:=3 -> write('Parabéns por passar em seu primeiro semestre, veremos até quando irá durar.'),nl,zerar_contador,intro_engenharia ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,mainIncrementa,calculo).

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

%Férias

ferias(1):-nl,write('Parabéns por sobreviver esse primeiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 2 te aguarda'),nl, curso.

%Escolha de curso

curso:- write('Depois de enfrentar seu primeiro ano você terá a oportunidade de fazer a escolha do seu curso, você tem 5 opções: '),nl,
        write('1 - Aeroespacial;'),nl,
        write('2 - Automotiva;'),nl,
        write('3 - Eletrônica;'),nl,
        write('4 - Energia;'),nl,
        write('5 - Software'),nl,
        write('Informe o número do curso que deseja se formar: '),nl,
        read(Escolha).
        (Escolha =:= 1 -> write('Você escolheu cursar Aeroespacial! Boa sorte e bom curso!'),nl ,eletromag
        ; Escolha =:= 2 -> write('Você escolheu cursar Automotiva! Boa sorte e bom curso!'),nl,eletromag
        ; Escolha =:= 3 -> write('Você escolheu cursar Eletrônica! Boa sorte e bom curso!'),nl,eletromag
        ; Escolha =:= 4 -> write('Você escolheu cursar Energia! Boa sorte e bom curso!'),nl,eletromag
        ; Escolha =:= 5 -> write('Você escolheu cursar Software! Boa sorte e bom curso!'),nl).

%Ano2

eletromag:-write('Parabéns, por causa da escolha do seu curso, você veio para Eletromagnetismo, ou como gostam de chamar, eletromag'),nl,
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
           ; write('Você escolheu uma tomada que não funcionava, você e seu grupo reprovaram!'),nl,mainIncrementa,eletromag).

%Ano3


mds:-write('Você chegou em MDS!'),nl,
              write('Vai ser um semestre muito puxado e cansativo'),nl,
              write('Mas pera! Isso virou AmongUS? Acho que tem um impostor entre nós...'),nl,
              write('Você acaba de olhar o repositório, e enquanto você tem 120 commits, tem um casa com apenas 14..'),nl,
              write('Descubra quem é!'),nl,
              write('commits(andre,120)'),nl,
              write('commits(pedro,180)'),nl,
              write('commits(biel,143)'),nl,
              write('commits(aara,230)'),nl,
              write('commits(jorge,14)'),nl,
              read(Commit)
              (Commit=="jorge" -> write('Aprovado!Maldito jorge!'):write('Reprovou! Será que o migué era você?')).

              



eletricidade:-write('Bem-vindo(a) a eletricidade!'),nl,
              write('Nessa matéria você terá que ligar todos as luzes da sala, em apenas 4 movimentos, você sabe que:'),nl,
              write('As luzes da sala estão desligadas'),nl,
              write('A sala possui 4 interruptores correspondendo as 5 luzes na sala, cada uma atua de uma maneira diferente;'),nl,
              write('interruptor 1 - liga a luz 1'),nl,
              write('interruptor 2 - liga as luzes 1, 2 e 5'),nl,
              write('interruptor 3 - liga as luzes 3 e 4, e desliga a luz 4 caso ela esteja ligada'),nl,
              write('interruptor 4 - liga a luz 4'),nl,
              write('Suas respostas: '),nl,
              nl,write('Escolha 1: '),read(Escolha1),nl,
              (Escolha1 \== 4 -> write('Reprovado'),nl,mainIncrementa,eletricidade ; write('Escolha 1 correta!')),nl,
              write('Escolha 2: '),read(Escolha2),nl,
              (Escolha2 \== 2 -> write('Reprovado'),nl,mainIncrementa,eletricidade ; write('Escolha 2 correta!')),nl,
              write('Escolha 3: '),read(Escolha3),nl,
              (Escolha3 \== 3 -> write('Reprovado'),nl,mainIncrementa,eletricidade ; write('Escolha 3 correta!')),nl,
              write('Escolha 4: '),read(Escolha4),nl,
              (Escolha4 \== 4 -> write('Reprovado'),nl,mainIncrementa,eletricidade ; write('Escolha 4 correta!')),nl,
              write('Parabéns você foi aprovado!'),nl,zerar_contador.


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
      (Resposta = 'Linux' -> write('Aprovado!'),nl,zerar_contador ; write('Reprovado!'),nl,mainIncrement,fso).

%Ano4


desenho:-     write('Caramba! você chegou na matéria mais díficil do curso de software! Arquitetura e Desenho de Software!!!'),nl,
              write('Mas é muito comum as pessoas saírem dessa matéria amando nossa queria professora Milene!'),nl,
              write('Quer saber qual ser mistico a mulilene vira segunda e sexta, de 10h as 12h?'),nl,
              write('então, digite!milene(dias(dia1,dia2),hor(hora1,hora2),CriaturaMistica).'),nl,


              write('milene(dias(terça,sexta),hor(15,17),fada).'),nl,
              write('milene(dias(segunda,quarta),hor(8,12),unicórnio).'),nl,
              write('milene(dias(quinta,sexta),hor(9,19),perfeiçãoEmPessoa).'),nl,
              write('milene(dias(terça,sexta),hor(8,11),mauMauSlayer).'),nl,
              write('milene(dias(quarta,quinta),hor(14,18),bella).'),nl,
              write('milene(dias(segunda,sexta),hor(10,12),profDeDesenho).'),nl,
              write('milene(dias(segunda,quarta),hor(18,22),tinkerBell).'),nl,
              write('milene(dias(quinta,quarta),hor(20,21),donaDoMundo).'),nl,
              write('milene(dias(segunda,sexta),hor(13,14),pessoa).'),nl,
              write('milene(dias(segunda,sexta),hor(11,12),diretora).'),nl,
              write('Sua resposta: '),read(Resposta),nl,
      (Resposta = 'profDeDesenho' -> write('Ela é muitas coisas, mas Prof de desenho é uma das melhores! Aprovado!'):write('Reprovado!')).


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