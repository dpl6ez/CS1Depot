module gun
import list

data country = Argentina | Australia | Austria | Honduras | USA

||| A record of this type represents a country and the death rate per 10,000,000 by gun for homicides, suicides, unintentional, other
data gunrow = mkGunrow country Nat Nat Nat Nat

argen: gunrow
argen = mkGunrow Argentina 190 279 64 36
austr: gunrow
austr = mkGunrow Australia 11 62 5 8

austri: gunrow
austri = mkGunrow Austria 18 268 1 8

hond: gunrow
hond = mkGunrow Honduras 648 0 0 0

usa: gunrow
usa = mkGunrow USA  355 670 16 9

Countryname: gunrow -> country
Countryname (mkGunrow c h s u o) = c

homicidePer10M: gunrow -> Nat
homicidePer10M (mkGunrow c h s u o) = h

suicidePer10M: gunrow -> Nat
suicidePer10M (mkGunrow c h s u o) = s

unknownPer10M: gunrow -> Nat
unknownPer10M (mkGunrow c h s u o) = u

otherPer10M: gunrow -> Nat
otherPer10M (mkGunrow c h s u o) = o

table: list
table = (cons argen (cons austri (cons austr (cons hond (cons usa  nil)))))
