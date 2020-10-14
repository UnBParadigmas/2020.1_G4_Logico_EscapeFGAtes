iniciar:-write('Parabéns por passar no vestibular e ingressar nessa nova fase da vida, a FACULDADE, será que você tem o que é preciso para sobreviver.'),nl,
         write('Tente não jubilar e consiga se formar em 5 anos. Bem vindo ao curso de Engenharia.Bem vindo ao FGAtes.'),nl,comandos.

comandos:-nl,write('Antes de começar você deve entender algumas instruções sobre seu curso:'),nl,
          write('comandos.                   --Acesse as instruções a qualquer momento'),nl,
          write('jogar.                      --Inicia seu ciclo de 5 anos na faculdade'),nl,
          write('trancar.                    --Para caso queira desisitir e sair do jogo'),nl.

trancar:-write('É uma pena que não tenha conseguido se formar. Mais sorte da próxima vez, até logo'),nl,
         write('ESCAPE FGATES: Você não se formou!'),!.

jogar:-nl,write('Teste').


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
          (EscolhaFinal \== 5 -> write('Seu amigo comprou o carro com defeito, o professor ficou sabendo e voce foi reprovado!'),sauto,nl; write('Parabens!! Agora voce tem carona e a aprovacao naa disciplina!!')).


bd:- nl,write('Você esta cursando a materia de Bancos de dados e percebeu que salvou o nome de um usuario sem a senha!!'),nl,
     write('Tente descobrir a senha do usuario para poder entregar o trabalho final!!'),nl,senha.
senha:-     write('Senha criptografada = cbodp'),nl,
            write('Dica: A senha esta muito mais perto do que voce imagina!!'),nl,
            write('Se precisar de dicas sobre a cifra, escreva 'cola' ou 'dica' na resposta'),nl,
            read(Senha),nl,
            (Senha \== 'banco', Senha \== 'cola', Senha \== 'dica' -> write('Senha errada, faca a materia de novo..'),nl,bd
            ; Senha == 'banco' -> write('Aprovado!'),nl
            ; Senha == 'cola' -> write('O professor pegou voce colando... Reprovado!!!'),nl,bd
            ; Senha == 'dica' -> write('Dica final: a+1, b+1, c+1,...'),nl,senha
            ).


sa:- nl,write('Você esta cursando a materia de Sistemas Aeroespaciais, fez um aviaozinho de papel para a materia e agora precisa jogar'),nl,
    write('Jogue o aviaozinho na oportunidade correta e evite que ele quebre!!!'),nl,
    nl,write('Oportunidade 1 - Sem vento e chovendo'),nl,
    write('Oportunidade 2 - Muito vento e ensolarado'),nl,
    write('Oportunidade 3 - Muito vento e chovendo'),nl,
    write('Oportunidade 4 - Sem vento e ensolarado'),nl,
    write('Oportunidade 5- Pouco vento e chovendo'),nl,
    read(Escolha),nl,
    (
        Escolha == 1 -> write('Choveu no seu aviaozinho e ele ficou encharcado... Reprovado.'),sa,nl; 
        Escolha == 2 -> write('O vento levou seu aviaozinho ate a ponte alta... Reprovado.'),sa,nl; 
        Escolha == 3 -> write('Voce foi inteligente e testou dentro do auditorio, parabens! Aprovado!'),nl; 
        Escolha == 4 -> write('O clima estava perfeito, mas sua mira nao... O aviaozinho bateu na parede e desmontou... Reprovado.'),sa,nl; 
        Escolha == 5 -> write('Tinha tudo pra dar errado... E deu! Reprovado.'),sa,nl
    ).

mecflu:- nl,write('Enquanto você esta cursando a materia de Mecanica dos Fluidos, e chegou na prova final.'),nl,
         write('Você abre a prova e ve apenas uma questao, fica nervoso, MUITO nervoso porque nao sabe responder e decide chtar...'),nl,
         write('A questao eh: '),nl,
         write('Você fecha a torneira enquanto escova os dentes?'),nl,
         write('1 - sim'),nl,
         write('2 - nao'),nl,
         read(Escolha),nl,
        (Escolha \== 1 -> write('Você chutou errado... Reprovado!'),mecflu,nl ; write('Você deu a sorte no chute! Aprovado!!')).


