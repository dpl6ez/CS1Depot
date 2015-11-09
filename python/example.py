x= 5
y= 6

if(x > 1):
    x = 0
    y = 1
else:
    x = 1

if(x > 1 or y == x):
    x = 0

else:
    x = 1

#iteration

times = 10
while (times > 0):
    print("Hello")
    times  = (times - 1)

#Procedure Call

def fun(a, b, c, x):
    result = a * (x * x) + b * x + c
    return result


