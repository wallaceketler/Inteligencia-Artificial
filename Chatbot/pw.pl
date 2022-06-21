pw1:-
    format("Bem vindo(a) À PW cosméticos e perfumaria"),nl,
    format("Deseja comprar um produto?"),nl,
    read(Resposta),
    ans(Resposta).
pw2:-    
	format("Deseja devolver um produto?"),nl,
    read(Resposta),
    ans(Resposta).
pw3:-
    format("Deseja trocar um produto?"),nl,
    read(Resposta),
    ans(Resposta).
pw4:-
    format("Deseja ver o status  de entrega de um produto"),nl,
    read(Resposta),
    ans(Resposta).
pw5:-
    format("Deseja conversar um atendente?"),nl,
    read(Resposta),
    ans(Resposta).
pw6:-
    format("Deseja saber onde temos lojas físicas?"),nl,
    read(Resposta),
    ans(Resposta).
pw7:-
    format("Aqui está a lista de produtos disponíveis, digite o número do produto que você deseja"),nl,
	format("Shampoo X"),nl,
	format("Perfume Y"),nl,
	format("Loção pós barba"),nl,
    format("Desodorante Z"),nl,
    format("Sabonete "),nl,
    format("Batom Q"),nl,
    format("Maquiagem A"),nl.
pw8:-
    format("Aqui está a lista de produtos que você já comprou, digite o número que deseja"),nl,
	format("Shampoo X"),nl,
	format("Perfume Y"),nl,
	format("Loção pós barba"),nl,
    format("Desodorante Z"),nl,
	read(_Resposta),
    pw13.
pw9:-	
    format("Aqui está a lista de produtos que você já comprou, digite o número que deseja"),nl.
pw10:-    
	format("Aqui está o status da entrega de seus produtos"),nl.
pw11:-
    format("Aqui está o contato de um dos nossos atendentes"),nl.
pw12:-
    format("Aqui está o endereço das lojas físicas"),nl.
pw13:-
    format("Deseja concluir a compra?"),nl,
    read(Resposta),
	ans(Resposta).
pw14:-
    format("Produto devolvido"),nl.  
pw15:-
    format("Aqui está a lista de produtos disponíveis para troca, Digite o número que deseja"),nl,
	format("Shampoo X"),nl,
	format("Perfume Y"),nl,
	format("Loção pós barba"),nl,
    format("Desodorante Z"),nl,
    format("Sabonete "),nl,
    format("Batom Q"),nl,
    format("Maquiagem A"),nl,
    read(_Resposta).
pw16:-
    format("Obrigado pela compra"),nl,
	pw1.
pw17:-    
    format("Deseja concluir a troca?"),nl,
    read(resposta).
pw18:-
    format("Obrigado pela troca"),nl,
	pw1.
%Parte das chamadas de respostas

ans(sair):- !.
ans(Resposta):- 
    (Resposta=:=1) ->  pw15, fail;
    (Resposta=:=0) ->  pw2.
	