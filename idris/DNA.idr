module DNA

import list
import pair
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand a = (Map complement_base a)

teststrand: list base
teststrand = A::C::A::T::A::nil

strand1: list (pair base base) -> list base
strand1 a = (Map fst a)

strand2: list (pair base base) -> list base
strand2 a = (Map snd a)

DNApair: base -> pair base base
DNApair a = (mkPair a (complement_base a))

complete: list base -> list (pair base base)
complete a = (Map DNApair a)

isa: pair base base -> nat
isa (mkPair A A) = (S O)
isa (mkPair T T) = (S O)
isa (mkPair C C) = (S O)
isa (mkPair G G) = (S O)
isa (mkPair _ _) = O

mkNum: base -> list base -> list nat
mkNum a nil = nil
mkNum a (h::t) = (isa (mkPair a h))::(mkNum a t)

countBase: base -> list base -> nat
countBase a t = (fancy add O (mkNum a t))
