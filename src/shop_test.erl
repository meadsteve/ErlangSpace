-module(shop_test).
-export([run/0]).

run() ->
  cost_works(),
  cost_works_for_lists(),
  success.

cost_works() ->
  7 = shop:cost(milk),
  2 = shop:cost(apples).

cost_works_for_lists() ->
  17 = shop:cost([{milk, 1}, {apples, 5}]),
  18 = shop:cost([{oranges, 2}, {newspaper, 1}]),
  10 = shop:cost([{milk, -1}, {apples, 5}]).