module set

import list
import ite
import bool
import eq
import serialize

|||mkSet is meant to be private
data set a = mkSet (list a)

||| a starting for building any set
new_set: set a
new_set = mkSet nil

set_insert:(eq a) => a -> set a -> set a
set_insert v (mkSet l) = ite (member v l)
                             (mkSet l)
                             (mkSet (v::l))

eql_set: (eq a) => set a -> set a -> bool
eql_set (mkSet l1) (mkSet l2) = (same_elements l1 l2)
  
instance (eq a) => eq (set a) where
  eql s1 s2 = eql_set s1 s2
  
a1: set bool
a1 = (mkSet (true::nil))  

toStringlistVal: (serialize a) => list a -> String
toStringlistVal nil = ""
toStringlistVal (h::nil) = (toString h)
toStringlistVal (h::t) = (toString h) ++ ", " ++ (toStringlist t) 

instance (serialize a) => serialize (set a) where
  toString (mkSet l) = (toStringlistVal l)
