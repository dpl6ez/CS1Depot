module nat

import bool

data nat = O | S nat

add: nat -> nat -> nat
add O m = m
add (S n) m= S(add n m)

mult: nat -> nat -> nat
mult O m = O
mult n (S m) = add m (mult n m)
