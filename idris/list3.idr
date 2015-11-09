import nat
import bool

infixr 7 ::

data list a = nil | a (list a) (::)
