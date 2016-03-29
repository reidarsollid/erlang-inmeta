-module(change).
-export([start/1]).

start(Str) ->
  spawn(fun() -> change(Str, 0) end).

change(Str, Num) ->
  receive
      {str, NewStr} when is_list(NewStr) ->
        change(NewStr, Num);
      {num, NewNum} when is_integer(NewNum) ->
        change(Str, NewNum);
      print ->
        io:format("~p~p~n", [Str,Num]),
        change(Str, Num);
      bye ->
        ok
    end.
