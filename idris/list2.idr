module newlist

import nat
import bool

infixr 7 ::

data list a = nil | (::) a (list a)


l1: list bool
l1 = (::) true nil

l2: list bool
l2 = (::) true l1

length: list a -> nat
length nil = O
length ((::) n l) = S (length l)

append: list a -> list a -> list a
append nil m = m
append ((::) a b) m = (::) a (append b m)

 
