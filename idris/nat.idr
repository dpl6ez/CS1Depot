module nat

import bool
import eq
import serialize

data nat = O | S nat

add: nat -> nat -> nat
add O m = m
add (S n) m= S(add n m)

mult: nat -> nat -> nat
mult O m = O
mult m O = O
mult (S n) m = add m (mult n m)

fact: nat -> nat
fact O = S O
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub m O = m
sub (S m) (S n) = sub m n

exp: nat -> nat -> nat
exp m O = (S O)
exp m (S n) = mult m (exp m n)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S(S n)) = add (fib (S n)) (fib n)

le: nat -> nat -> bool
le O m = true
le m O = false
le (S m) (S n) = (le m n)

eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat O m = false
eql_nat m O = false
eql_nat (S m) (S n) = eql_nat m n

gt: nat -> nat -> bool
gt m n = not (le m n)

ge: nat -> nat -> bool
ge m O = true
ge O m = false
ge (S m) (S n) = ge m n

lt: nat -> nat -> bool
lt m n = not (ge m n)

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance serialize nat where
  toString O = "Z"
  toString (S n) = "|" ++ toString n
