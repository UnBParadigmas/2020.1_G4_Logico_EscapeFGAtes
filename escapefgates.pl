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
         write('essa matéria pode ser tanto fácil como somar 1 com 2, como tamem pode ser impossíve de se passar, como você irá se sair nessa?'),nl,
         nl,write('Resolva:'),nl,
         write('1 + 2 = ?'),nl,
         write('Resposta: '),
         read(Resposta),
         (Resposta=:=3 -> write('Parabéns por passar em seu primeiro semestre, veremos até quando irá durar.'),nl,intro_engenharia ; write('É uma pena, mas você reprovou a matéria, por causa disso terá que fazê-la novamente'),nl,calculo).

intro_engenharia:-write('Teste').

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

fso:- write('Você chegou em FSO - Fundamentos de Sistemas Operacionais'),nl,
      write('Para você passar é simples digite o nome do melhor sistema operacional'),nl,
      write('Não se esqueça de usar as aspas simples para escrever'),nl,
      write('Sua resposta: '),read(Resposta),nl,
      (Resposta = 'Linux' -> write('Aprovado!'),nl ; write('Reprovado!'),nl,fso).

%Ano4

%instagram, twitter, facebook, youtube, reddit, netflix, google chrome, Snapchat, spotify, whatsapp


economia_energia:-  write('Bem-vindo(a) a matéria de Economia de Energia, para passar basta não deixar seu celular descarregar.'),nl,
                    write('Para isso você terá que escolher que aplicativos você irá fechar, cada aplicativo consome uma porcentagem de energia'),nl,
                    write('Faça a escolha certa e evite que seu celular descarregue!'),nl,
                    write('1º round:'),nl,
                    write('1- Youtube'),nl,
                    write('2- Spotify'),nl,
                    read(Aplicativo1),(Aplicativo1 =:= 2 -> write('Bateria: 80%'),nl ; write('Bateria: 100%')),nl,
                    write('2º round:'),nl,
                    write('1- Instagram'),nl,
                    write('2- Snapchat'),nl,
                    read(Aplicativo2),(Aplicativo2 =:= 2 -> write('Bateria: 60%'),nl ; write('Bateria: 100%')),nl,
                    write('3º round:'),nl,
                    write('1- Twitter'),nl,
                    write('2- Whatsapp'),nl,
                    read(Aplicativo3),(Aplicativo3 =:= 1 -> write('Bateria: 40%'),nl ; write('Bateria: 100%')),nl,
                    write('4º round:'),nl,
                    write('1- Facebook'),nl,
                    write('2- Reddit'),nl,
                    read(Aplicativo4),(Aplicativo4 =:= 2 -> write('Bateria: 20%'),nl ; write('Bateria: 100%')),nl,
                    write('5º round:'),nl,
                    write('1- Netflix'),nl,
                    write('2- Google Chrome'),nl,
                    read(Aplicativo5),(Aplicativo5 =:= 1 -> write('Bateria: 0%'),nl,nl,write('Reprovado!'),nl,nl,economia_energia ; write('Bateria: 100%, você foi aprovado(a)')),nl.