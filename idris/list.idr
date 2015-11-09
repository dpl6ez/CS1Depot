module list

import nat
import bool
import ite
import eq
import serialize

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

foldr: (a -> a -> a) -> a -> list a -> a
foldr f id nil = id
foldr f id (h::t) = f h (list.foldr f id t)

member: (eq a) => a -> list a -> bool
member v nil = false
member v (h::t) = ite (eql v h)
                  (true)
                  (member v t)

hTest: (eq a) => a -> list a -> bool
hTest h1 (h2::t2) = or (eql h1 h2) (hTest h1 t2)
hTest l1 nil = false

l1Test: (eq a) => list a -> list a -> bool
l1Test nil l2 = true
l1Test (h1::t1) (h2::t2) = and (hTest h1 (h2::t2)) (l1Test t1 (h2::t2))

same_elements: (eq a) => list a -> list a -> bool
same_elements l1 l2 = and (l1Test l1 l2) (l1Test l2 l1)

toStringlist: (serialize a) => list a -> String
toStringlist nil = ""
toStringlist (h::nil) = (toString h)
toStringlist (h::t) = (toString h) ++ ", " ++ (toStringlist t) 

instance (serialize a) => serialize (list a) where
  toString l = "[" ++ (toStringlist l) ++ "]"


