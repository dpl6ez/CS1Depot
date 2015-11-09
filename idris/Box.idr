module Box

import bool
import unit

data box t = mkBox t

unbox: box t -> t
unbox (mkBox t) = t
