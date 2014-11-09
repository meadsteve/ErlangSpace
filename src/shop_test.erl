-module(shop_test).
-export([run/0]).

run() ->
  cost_works(),
  success.

cost_works() ->
  7 = shop:cost(milk),
  2 = shop:cost(apples).