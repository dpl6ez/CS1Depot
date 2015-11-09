module pairTest
import pair
import bool
import unit
import eq

p1: pair bool bool
p1 = mkPair true false

p2: pair unit bool
p2 = mkPair mkUnit false

instance eq pair
