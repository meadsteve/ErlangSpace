-module(shop).
-export([cost/1]).

cost(oranges)   -> 5;
cost(newspaper) -> 8;
cost(apples)    -> 2;
cost(pears)     -> 9;
cost(milk)      -> 7;

cost([{Item, Quantity}| RestOfList]) -> (cost(Item) * Quantity) + cost(RestOfList);
cost([]) -> 0.

