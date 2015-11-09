module food

import bool
import list
import nat
import pair
import relation

||| This record defines a food item, the string variable is the name of the food, the bool variable defines if the food is healthy or not and the Nat variable defines the amount of calories in the food

record Food where
  constructor mkFood
  name: String
  healthy: bool
  calories: Nat

apple: Food
apple = mkFood "Apple" true 50

cookie: Food
cookie = mkFood "Cookie" false 100

cracker: Food
cracker = mkFood "Cracker" true 30

ap: Nat
ap = calories apple
--expect 50

setName: Food -> String -> Food
setName f n = record { name = n} f

setHealthy: Food -> bool -> Food
setHealthy f h = record { healthy = h } f
 
food: list Food
food = apple::cookie::cracker::nil

caloriecount: list Food -> list Nat
caloriecount nil = nil
caloriecount (a::b) = calories a::(caloriecount b)

foodnames: list Food -> list String
foodnames nil = nil
foodnames (a::b) = name a::(foodnames b)

good: list Food
good = filter healthy food

healthycalories: list Nat
healthycalories = Map calories good

tcals: Nat
tcals = list.foldr plus 0 healthycalories

aveCalories: pair Nat Nat
aveCalories = mkPair 
           (query food healthy calories plus 0) 
           (query food healthy countOne plus 0)
