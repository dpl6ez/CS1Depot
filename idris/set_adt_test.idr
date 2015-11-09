import set_spec
import bool
import option
import pair
import list
import nat
import eq
import serialize
import ite

--expect (mkSet O::(S O)::nil)
set_insertTest: set nat
set_insertTest = (set_insert (S O) (mkSet (O::nil)))

--expect (mkSet O::nil)
set_insertTest2: set nat
set_insertTest2 = (set_insert O (mkSet (O::nil)))

--expect (mkSet false::nil)
set_removeTest: set bool
set_removeTest = (set_remove true (mkSet (true::false::nil)))

--expect (S O)
set_cardinalityTest: nat
set_cardinalityTest = (set_cardinality (mkSet (O::nil)))

--expect (S(S(S O)))
set_cardinalityTest2: nat
set_cardinalityTest2 = (set_cardinality (mkSet ((S(S O))::(S O)::O::nil)))

--expect true
set_memberTest: bool
set_memberTest = (set_member (S O) (mkSet ((S O)::(S(S O))::nil)))

--expect false
set_memberTest2: bool
set_memberTest2 = (set_member O (mkSet ((S O)::(S(S O))::nil)))

set_unionTest: set nat
set_unionTest = (set_union (mkSet (O::(S O)::(S(S O))::(S(S(S O)))::nil)) (mkSet (O::(S O)::(S(S O))::(S(S(S(S O))))::nil)))

--expect (mkSet (O::(S O)::nil))
set_intersectionTest: set nat
set_intersectionTest = (set_intersection (mkSet (O::(S O)::(S(S O))::nil)) (mkSet (O::(S O)::(S(S(S O)))::nil)))

--expect (mkSet ((S O)::(S(S O))::nil)
set_differenceTest: set nat
set_differenceTest = (set_difference (mkSet (O::(S O)::(S(S O))::nil)) (mkSet (O::(S(S(S O)))::nil)))

--expect true
set_forallTest: bool
set_forallTest = (set_forall evenb (mkSet (O::(S(S O))::nil)))

--expect false
set_forallTest2: bool
set_forallTest2 = (set_forall oddb (mkSet (O::(S O)::nil)))

--expect true
set_existsTest: bool
set_existsTest = (set_exists evenb (mkSet (O::(S O)::nil)))

--expect false
set_existsTest2: bool
set_existsTest2 = (set_exists oddb (mkSet (O::(S(S O))::nil)))

--expect some (S O)
set_witnessTest: option nat
set_witnessTest = (set_witness oddb (mkSet (O::(S O)::nil)))

--expect none
set_witnessTest2: option nat
set_witnessTest2 = (set_witness evenb (mkSet ((S O)::(S(S(S O)))::nil)))

--expect (mkSet ((mkPair (S O) true)::(mkPair (S O) false)::(mkPair O
--true)::(mkPair O false)::nil))
set_productTest: set (pair nat bool)
set_productTest = (set_product (mkSet ((S O)::O::nil)) (mkSet (true::false::nil)))

--expect true
eqlTest: bool
eqlTest = (eql (mkSet (true::false::nil)) (mkSet (true::false::nil)))

--expect false
eqlTest2: bool
eqlTest2 = (eql (mkSet (true::nil)) (mkSet (true::false::nil)))

--expect "True, False"
toStringTest: String
toStringTest = (toString (mkSet (true::false::nil)))
