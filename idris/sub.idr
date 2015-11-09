data nat = O | S nat
data pair a b = mkPair a b

subp: pair nat nat -> nat
subp (mkPair O m) = O
subp (mkPair m O) = m
subp (mkPair (S m) (S n)) = subp (mkPair m n)

