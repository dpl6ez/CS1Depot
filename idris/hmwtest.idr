import bool
import option
import pair
import list
import nat
import eq
import serialize
import list
import ite

data set: (a: Type) -> Type

emptySet: set a

isEmpty: (s: set a) -> bool
isEmpty emptySet = true
isEmpty _ = false
