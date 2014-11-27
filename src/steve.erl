-module(steve).
-author("steve.brazier").

-export([aveoflist/1, stdoflist/1]).

aveoflist([Value | RemainingList]) -> aveoflist(RemainingList, Value, 1).

aveoflist([Value | RemainingList], Total, Count) -> aveoflist(RemainingList, Total + Value, Count + 1);
aveoflist([], Total, Count) -> Total / Count.

stdoflist(List) ->
  Average = aveoflist(List),
  SquareDeviations = lists:map(fun(X) -> (X - Average) * (X - Average) end, List),
  AverageSquareDeviation = aveoflist(SquareDeviations),
  math:sqrt(AverageSquareDeviation).