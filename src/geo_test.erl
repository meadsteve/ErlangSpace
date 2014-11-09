-module(geo_test).
-export([run/0]).

run() ->
  rectangles_work(),
  squares_work(),
  success.

rectangles_work() ->
  12 = geo:area({rectangle, 3, 4}),
  9 = geo:area({rectangle, 3, 3}).

squares_work() ->
  4 = geo:area({square, 2}),
  1 = geo:area({square, 1}).