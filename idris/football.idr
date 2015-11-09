module football
import list

data player = Mizzel | Severin | Johnson | Johns

||| A record of each players and the yards they gained over four games
data gamelog = mkGamelog player Nat Nat Nat Nat

mizzel: gamelog
mizzel= mkGamelog Mizzel 45 66 44 2

severin: gamelog
severin = mkGamelog Severin 58 153 53 34

johnson: gamelog
johnson = mkGamelog Johnson 0 46 13 23

johns: gamelog
johns = mkGamelog Johns 238 289 263 199

game1: gamelog -> Nat
game1 (mkGamelog P U N W B) = U

game2: gamelog -> Nat
game2 (mkGamelog P U N W B) = N

game3: gamelog -> Nat
game3 (mkGamelog P U N W B) = W

game4: gamelog -> Nat
game4 (mkGamelog P U N W B) = B

Gametable: list
Gametable = (cons johns (cons johnson (cons severin (cons mizzel nil))))

Updategame1: gamelog -> Nat -> gamelog
Updategame1 (mkGamelog P U N W B) X = (mkGamelog P X N W B)

Updategame2: gamelog -> Nat -> gamelog
Updategame2 (mkGamelog P U N W B) X = (mkGamelog P U X W B)

Updategame3: gamelog -> Nat -> gamelog
Updategame3 (mkGamelog P U N W B) X = (mkGamelog P U N X B)

Updategame4: gamelog -> Nat -> gamelog
Updategame4 (mkGamelog P U N W B) X = (mkGamelog P U N W X)

