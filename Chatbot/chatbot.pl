%informações e leituras

start:-
    format("Bem vindo(a) À PW cosméticos e perfumaria"),nl,
    format("O que você deseja, "),nl,
    format("entrar ou cadastrar?"),nl,
    read(Resposta),
    valida1(Resposta).

login:-                       %Validação da entrada
    format("Login: "),
    read(Login),
    format("Senha: "),
    read(Senha),
    valida2(Login,Senha).

cadastro:-                    %Cadastro
    format("Nome: "),
    read(_Nome),
    format("Senha: "),
    read(_Senha),
    format("Idade: "),
    read(_Idade),
    format("CPF"),
    read(_CPF),
    valida3.

opcoes:-
    format("Olá!"),nl,
    format("O que você deseja fazer?"),nl,
    format("->comprar   [Compre nossos produtos]"),nl,
    format("->trocar    [Troque algo que você comprou]"),nl,
    format("->devolver  [devolve algo que você comprou]"),nl,
    format("->status    [status de suas compras]"),nl,
    format("->contato   [contato de algum dos nossos atendentes]"),nl,
    format("->endereco  [endereço de nossa loja física]"),nl,
    read(Resposta),
    encaminha(Resposta).

compra:-
    format("Aqui está a lista de produtos disponíveis, digite o número do produto que você deseja comprar"),nl,
	format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
    format("[5]Sabonete"),nl,
    format("[6]Batom Q"),nl,
    format("[7]Maquiagem A"),nl,
	read(Resposta),
    respostacompra(Resposta).

troca:-
    format("Aqui está a lista de produtos que você já comprou, digite o número que deseja trocar"),nl,
	format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
	read(Resposta),
    respostatroca1(Resposta).

troca2:-
    format("Escolha o produto a ser trocado na loja"),nl,
    format("[1]Shampoo Q"),nl,
	format("[2]Perfume U"),nl,
	format("[3]Loção pós barba L"),nl,
    format("[4]Desodorante Y"),nl,
    read(Resposta),
    respostatroca2(Resposta).

devolve:-	
    format("Aqui está a lista de produtos que você já comprou, digite o número que deseja devolver"),nl,
    format("[1]Shampoo X"),nl,
	format("[2]Perfume Y"),nl,
	format("[3]Loção pós barba"),nl,
    format("[4]Desodorante Z"),nl,
	read(Resposta),
    respostadevolve(Resposta).

status:-    
	format("Aqui está o status da entrega de seus produtos"),nl,
	format("Produto 1 - Entregue"),nl,
    format("Produto 2 - Saiu para entrega"),nl,
	opcoes.

contato:-
    format("Aqui está o contato de um dos nossos atendentes"),nl,
	format("0800 4002-8922"),nl,
	opcoes.

endereco:-
    format("Aqui está o endereço das lojas físicas"),nl,
    format("Divinópolis - Bairro X, Rua Y, Número Z"),nl,
	opcoes.

concluicompra1:-
    format("Deseja confirmar a compra?"),nl,
    read(Resposta),
	confirmacompra(Resposta).
concluicompra2:-
    format("Obrigado pela compra"),nl,
	opcoes.

concluidevolve1:-
    format("Deseja confirmar a devolução?"),nl,
    read(Resposta),
    confirmadevolve(Resposta).

concluidevolve2:-
    format("Produto devolvido com sucesso!"),nl,
    opcoes.

concluitroca1:-    
    format("Deseja confirmar a troca?"),nl,
    read(Resposta),
	confirmatroca(Resposta).
concluitroca2:-
    format("Troca realizada com sucesso!"),nl,
	opcoes.

invalido:-
    format("Valor inválido"),nl,
	opcoes.

%Parte das chamadas de respostas

encaminha(Resposta):-
    (Resposta ==  comprar) ->  compra,fail;
    (Resposta ==  trocar) ->   troca,fail;
	(Resposta ==  devolver) -> devolve,fail; 
    (Resposta ==  status) ->   status,fail;
    (Resposta ==  contato) ->  contato,fail;
    (Resposta ==  endereco) ->  endereco,fail;
    write_ln("Desculpe, não entendi, digite novamente, por favor").
    
respostacompra(sair):- write_ln("Até mais!"),!.
respostacompra(Resposta):-
    (Resposta >= 1 , Resposta <8) -> concluicompra1, fail;
    (Resposta < 1 ; Resposta >7) -> invalido.

confirmacompra(sair):- write_ln("Até mais!"),!.
confirmacompra(Resposta):- 
    (Resposta == sim) ->  concluicompra2,fail;
    opcoes.

respostatroca1(sair):- write_ln("Até mais!"),!.
respostatroca1(Resposta):-
    (Resposta >= 1 , Resposta <5) -> troca2, fail;
    (Resposta < 1 ; Resposta >4) ->  invalido.

respostatroca2(sair):- write_ln("Até mais!"),!.
respostatroca2(Resposta):-
    (Resposta >= 1 , Resposta <5) -> concluitroca1, fail;
    (Resposta < 1 ; Resposta >4) ->  invalido.

confirmatroca(sair):- write_ln("Até mais!"),!.
confirmatroca(Resposta):-
    (Resposta == sim) -> concluitroca2, fail;
    write_ln("Troca cancelada..."), opcoes.

respostadevolve(sair):- write_ln("Até mais!"),!.
respostadevolve(Resposta):-
    (Resposta >= 1 , Resposta <5) -> concluidevolve1, fail;
    (Resposta < 1 ; Resposta >4) ->  invalido.

confirmadevolve(sair):- write_ln("Até mais!"),!.
confirmadevolve(Resposta):-
    (Resposta == sim) ->  concluidevolve2, fail;
    write_ln("Devolução cancelada..."), opcoes.

valida1(sair):- write_ln("Até mais!"),!.	%verifica se quer entrar ou cadastrar
valida1(Resposta):-
    (Resposta==entrar) ->	  login,fail;	
    (Resposta==cadastrar) ->  cadastro.

valida2(sair):- write_ln("Até mais!"),!.	%verifica se conta existe no login
valida2(Login, Senha):-
    (cadastrado(Login, Senha)) ->  write_ln("Logado"), opcoes, fail;
    write_ln("Conta não encontrada"), start.

valida3(sair):- write_ln("Até mais!"),!.	%cadastra
valida3():-   
    write_ln("Parabéns, você foi cadastrado!"), opcoes.

%base de dados de usuários cadastrados

cadastrado(wallace, 123456).
cadastrado(patrick, 123456).