:- use_module(library(clpfd)).
:- use_module(library(random)).

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

%Ano1

calculo:-nl,write('Seu primeiro desafio, Cálculo, a matéria que é falada por todos os estudantes de engenharia como sua primeira dificuldade'),nl,
         write('essa matéria pode ser tanto fácil como somar 1 com 2, como também pode ser impossíve de se passar, como você irá se sair nessa?'),nl,
         nl,write('Resolva:'),nl,
         write('1 + 2 = ?'),nl,
         write('Resposta: '),
         read(Resposta),
         (Resposta=:=3 -> write('Parabéns por passar em seu primeiro semestre, veremos até quando irá durar.'),nl,intro_engenharia ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,calculo).

intro_engenharia:-write('Você está fazendo Introdução a Engenharia, seu professor te propôs um trabalho simples para que possa ser aprovado'),nl,
                  write('Ele pediu para que você organizasse a tabela de assentos do seu grupo'),nl,
                  write('A tabela serve para saber qual posição cada membro irá ocupar, sabendo que cada mês os membros devem mudar de lugar'),nl,
                  write('Por você estar no primeiro semestre o professor facilitou e pediu para você apenas terminar a tabela já feita.'),nl,
                  write('A forma de organizar te lembra um sudoku de 4x4'),nl,
                  write('Sabendo que no seu grupo tem o Andre, a Sara, o Gabriel e o Pedro'),nl,
                  write('E que cada um corresponde respectivamente aos numeros 1, 2, 3 e 4, e que você como lider não participa dessa organização'),nl,
                  write('Qrganize a tabela em forma de lista: '),nl,
                  nl,write('Tabela:'),nl,
                  write('4 1 ? ?'),nl,
                  write('2 3 4 1'),nl,
                  write('1 2 3 4'),nl,
                  write('? ? 1 2'),nl,
                  write('Lembrando que a resposta deve conter todos os valores, e não apenas os números que faltam'),nl,
                  Resposta = [4,1,2,3,2,3,4,1,1,2,3,4,3,4,1,2],
                  read(Lista),
                  (Lista = Resposta -> write('Parabéns a lista esa correta! você foi aprovado!'),ferias(1) ; write('Você foi reprovado! Terá que fazer a matéria novamente'),intro_engenharia).

%Férias

ferias(1):-write('Parabéns por sobreviver esse primeiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 2 te aguarda'), curso.

%Escolha de curso

curso:- write('Depois de enfrentar seu primeiro ano você terá a oportunidade de fazer a escolha do seu curso, você tem 5 opções: '),nl,
        write('1 - Aeroespacial;'),nl,
        write('2 - Automotiva;'),nl,
        write('3 - Eletrônica;'),nl,
        write('4 - Energia;'),nl,
        write('5 - Software'),nl,
        write('Informe o número do curso que deseja se formar: '),nl,
        read(Escolha).

%Ano3

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
              (Escolha1 \== 4 -> write('Reprovado'),nl,eletricidade ; write('Escolha 1 correta!')),nl,
              write('Escolha 2: '),read(Escolha2),nl,
              (Escolha2 \== 2 -> write('Reprovado'),nl,eletricidade ; write('Escolha 2 correta!')),nl,
              write('Escolha 3: '),read(Escolha3),nl,
              (Escolha3 \== 3 -> write('Reprovado'),nl,eletricidade ; write('Escolha 3 correta!')),nl,
              write('Escolha 4: '),read(Escolha4),nl,
              (Escolha4 \== 4 -> write('Reprovado'),nl,eletricidade ; write('Escolha 4 correta!')),nl,
              write('Parabéns você foi aprovado!'),nl.


fisica_moderna :- write('Você chegou a física moderna, dentre as físicas é a mais atual, e por isso a mais complexa'),nl,
                  write('Para passar basta responder a pergunta, o gato de Schrödinger está: '),nl,
                  write('1- Vivo;'),nl,
                  write('2- Morto;'),nl,
                  write('Sua resposta:  '),nl,
                  read(Resposta),
                  random(0, 100, Resultado_vivo),write(Resultado_vivo),nl,
                  random(0, 100, Resultado_morto),write(Resultado_morto),nl,
                  (Resposta =:= 1, Resultado_vivo >= Resultado_morto -> write('Certo o gato tem mais chance de estar vivo!'),nl,write('Aprovado!') 
                  ; Resposta =:= 2, Resultado_morto >= Resultado_vivo -> write('Certo o gato tem mais chance de estar morto!'),nl,write('Aprovado!')
                  ; write('Reprovado! Terá que fazer a matéria novamente!'), fisica_moderna).


fso:- write('Você chegou em FSO - Fundamentos de Sistemas Operacionais'),nl,
      write('Para você passar é simples digite o nome do melhor sistema operacional'),nl,
      write('Não se esqueça de usar as aspas simples para escrever'),nl,
      write('Sua resposta: '),read(Resposta),nl,
      (Resposta = 'Linux' -> write('Aprovado!'),nl ; write('Reprovado!'),nl,fso).

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
                   (Celular5 =< 0 -> write('Reprovado! Terá que fazer a matéria novamente!'),nl,economia_energia ; write('Aprovado!')).