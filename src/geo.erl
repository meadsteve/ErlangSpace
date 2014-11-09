-module(geo).
-export([area/1]).

area({rectangle, Height, Width}) ->
  Height * Width;
area({square, Side}) ->
  area({rectangle, Side, Side}).
