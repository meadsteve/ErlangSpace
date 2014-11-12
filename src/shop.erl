-module(shop).
-export([cost/1]).

cost(oranges)   -> 5;
cost(newspaper) -> 8;
cost(apples)    -> 2;
cost(pears)     -> 9;
cost(milk)      -> 7;

cost({Item, Quantity}) when Quantity > 0  -> cost(Item) * Quantity;
cost({_Item, _InvalidQuantity}) -> 0;

cost([ListElement | RestOfList]) -> cost(ListElement) + cost(RestOfList);
cost([]) -> 0.

