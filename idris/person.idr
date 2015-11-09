module person

import bool
import list

record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

tom: Person
tom = mkPerson "Tom" 18 72 false

mary: Person
mary = mkPerson "Mary" 21 68 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person 
daryl = mkPerson "Daryl" 19 71 false

people: list Person
people = tom::
         mary::
         ge::
         daryl::
         nil
