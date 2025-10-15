rist = []
for i in range(0,10):
 n = int(input())
 x = n%42
 rist.append(x)

y = len(set(rist))
print(y)