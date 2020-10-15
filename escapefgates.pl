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

ferias(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Automotiva

ferias(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Eletrônica

ferias(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Energia

ferias(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Férias - Software

ferias(2):-nl,write('Parabéns por sobreviver o segundo ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 3 te aguarda!'),nl.

ferias(3):-nl,write('Parabéns por sobreviver o terceiro ano, feliz natal e um ótimo ano novo, aproveite suas férias, o Ano 4 te aguarda!'),nl.

ferias(4):-nl,write('Parabéns por sobreviver o quarto ano, feliz natal e um ótimo ano novo, aproveite suas férias, o último ano, o Ano 5 te aguarda!'),nl.

%Escolha de curso

curso:- write('Depois de enfrentar seu primeiro ano você terá a oportunidade de fazer a escolha do seu curso, você tem 5 opções: '),nl,
        write('1 - Aeroespacial;'),nl,
        write('2 - Automotiva;'),nl,
        write('3 - Eletrônica;'),nl,
        write('4 - Energia;'),nl,
        write('5 - Software'),nl,
        write('Informe o número do curso que deseja se formar: '),nl,
        read(Escolha),
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
        Escolha == 3 -> write('Voce foi inteligente e testou dentro do auditorio, parabens! Aprovado!'),nl,zerar_contador; 
        Escolha == 4 -> write('O clima estava perfeito, mas sua mira nao... O aviaozinho bateu na parede e desmontou... Reprovado.'),mainIncrementa,sa,nl; 
        Escolha == 5 -> write('Tinha tudo pra dar errado... E deu! Reprovado.'),mainIncrementa,sa,nl
    ).

%Ano3

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
        (Escolha \== 1 -> write('Você chutou errado... Reprovado!'),mainIncrementa,mecflu,nl ; write('Você deu a sorte no chute! Aprovado!!'),zerar_contador).

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