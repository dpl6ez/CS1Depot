module bool

import serialize

data bool = true | false

id_bool: bool -> bool
id_bool b = b

constFalse: bool -> bool
constFalse _ = false

constTrue: bool -> bool
constTrue _ = true

not: bool -> bool
not true = false
not _ = true

and: bool -> bool -> bool
and true = id_bool
and false = constFalse

or:  bool -> bool -> bool
or true = constTrue
or false = id_bool

nand: bool -> bool -> bool
nand true = constFalse
nand false = not

xor: bool -> bool -> bool
xor true = not
xor false = id_bool

eql_bool: bool -> bool -> bool
eql_bool true = id_bool
eql_bool false = not

instance serialize bool where
  toString true = "True"
  toString false = "False"
