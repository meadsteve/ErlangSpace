-module(fib).
-author("steve.brazier").

%% API
-export([find/1, fib/1]).

find(LessThan) ->
  find(LessThan, [1, 0]).

find(LessThan, [X, Y | Rest]) when X < LessThan, Y < LessThan  ->
  find(LessThan, [X + Y, X, Y| Rest]);
find(_LessThan, Elements)   ->
  sum_even_elements(Elements).

fib(0) -> 0;
fib(1) -> 1;
fib(X) -> fib(X - 1) + fib(X - 2).

sum_even_elements(List) -> sum_even_elements(0, List).

sum_even_elements(Total, []) -> Total;
sum_even_elements(Total, [Item|List]) when Item rem 2 =:= 0 -> sum_even_elements(Total + Item, List);
sum_even_elements(Total, [_Item|List]) -> sum_even_elements(Total, List).
