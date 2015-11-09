module relation

import list
import bool
import person
import pair

query: (list tuple) -> (tuple -> bool) -> (tuple -> value) -> (value -> value -> value) -> value -> value
query relation select project reduce id = list.foldr reduce id (Map project (filter select relation))

countOne: a -> Nat
countOne v = 1

count_rel: (list tuple) -> (tuple -> bool) -> Nat
count_rel rel sel = query rel sel countOne plus 0

sum_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> Nat
sum_rel rel sel proj = query rel sel proj plus 0

ave_rel: (list tuple) -> (tuple -> bool) -> (tuple -> Nat) -> pair Nat Nat
ave_rel rel sel proj =  mkPair (sum_rel rel sel proj) (count_rel rel sel)
