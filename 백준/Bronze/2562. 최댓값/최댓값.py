N=[]
for i in range(0,9):
  N.append(int(input()))

a = max(N)
b = N.index(a) + 1
print(a)
print(b)