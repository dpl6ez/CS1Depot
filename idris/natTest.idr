import natT
import pair
import bool

|||exp test cases, 2^0, 3^1, 3^2, 2^3

a: nat
a = exp (mkPair (S(S O)) O)

b: nat
b= exp (mkPair (S(S(S O))) (S O))

c: nat
c = exp (mkPair (S(S(S O))) (S(S O)))

d: nat
d= exp (mkPair (S(S O)) (S(S(S O))))

|||lep test cases 2<3, 3<2, 0<0

e: bool
e = lep (mkPair (S(S O)) (S(S(S O))))

f: bool
f = lep (mkPair (S(S(S O))) (S(S O)))

g: bool
g = lep (mkPair O O)

||| eqp test cases 2=2, 4=2, 0=0

h: bool
h = eqp (mkPair (S(S O)) (S(S O)))

i: bool
i = eqp (mkPair (S(S(S(S O)))) (S(S O)))

j: bool
j = eqp (mkPair O O)

|||gtp test cases 3>2, 2>3, 0>0

k: bool
k = gtp (mkPair (S(S(S O))) (S(S O)))

l: bool
l = gtp (mkPair (S(S O)) (S(S(S O))))

m: bool
m = gtp (mkPair O O)

|||gep test cases 4>2, 1>2, 2>2

n: bool
n = gep (mkPair (S(S(S(S O)))) (S(S O)))

o: bool
o = gep (mkPair (S O) (S(S O)))

p: bool
p = gep (mkPair (S(S O)) (S(S O)))

||| ltp test cases 2<3, 3<2, 0<0

q: bool
q = ltp (mkPair (S(S O)) (S(S(S O))))

r: bool
r = ltp (mkPair (S(S(S O))) (S(S O)))

s: bool
s= ltp (mkPair O O)
