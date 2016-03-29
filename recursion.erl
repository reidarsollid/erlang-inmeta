-module(recursion).
-export([add_one/1, printTail/1]).

add_one([H|T]) -> [H+1|add_one(T)];
add_one([])    -> [].

%map(F, [H|T]) -> [F(H)|map(F, T)];
%map(F, [])    -> [].

%add_one(L) -> map(fun(X) -> 1 + X end, L).

printTail([_H|T]) -> io:format("~p~n", [T]),printTail(T);
printTail([]) -> ok.
