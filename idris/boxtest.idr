module Boxtest

import Box
import bool
import unit

box2: box unit
box2 = (mkBox mkUnit)

box1: box bool
box1 = (mkBox true)
