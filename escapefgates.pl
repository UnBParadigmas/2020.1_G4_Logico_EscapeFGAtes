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