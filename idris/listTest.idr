import newlist
import bool
import nat

test0: list bool
test0 = true::false::nil

--map of evenb (O,1,2,4)
test1: list bool
test1 = Map evenb (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)

--filter of evenb (0,1,2,4)
test2: list nat
test2 = filter evenb (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)
