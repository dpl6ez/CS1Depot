module list

import nat
data list = nil | cons z list

l0: list
l0 = nil

l1: list
l1 = cons O l0

l2: list
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list
l3 = (cons (S O) (cons (S ( S O)) (cons (S (S (S O))) nil)))

length: list -> nat
length nil = O
length (cons n l') = S (length l')

l4: list
l4 = (cons (S O) (cons (S(S O)) (cons (S(S(S O))) (cons (S(S(S(S O)))) nil))))

append:  list -> list -> list
append  nil m = m
append (cons a b) m = (cons a (append b m))
