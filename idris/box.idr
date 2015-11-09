module Box

import bool
import unit
import eq
import serialize

data box t = mkBox t

unbox: box t -> t
unbox (mkBox t) = t

instance (eq a) => eq (box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (serialize a) => serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ", )"
