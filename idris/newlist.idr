module newlist

import nat
import bool
import ite

infixr 7 ::,++

data list a = nil | (::) a (list a)

length: list a -> nat
length nil = O
length (h::t) = S (length t)

append: list a -> list a -> list a
append nil m = m
append (a::b) c = a::(append b c)


(++): list a -> list a -> list a
(++) nil a = a
(++) (a::b) c = a::(b++c)

Map: (a -> b) -> list a -> list b
Map f nil = nil
Map f (h::t) = (f h)::(Map f t)

filter: (a -> bool) -> list a -> list a
filter f nil = nil
filter f (h::t) = ite (f h) (h::(filter f t)) (filter f t)

fancyplus: list nat -> nat
fancyplus nil = O
fancyplus (h::t) = add h (fancyplus t)

--binary operator CHECK
--identity element CHECK
-- type of list element CHECK

fancy: (a -> a -> a) -> a -> (list a) -> a
fancy f id nil = id
fancy f id (h::t) = f h (fancy f id t)

