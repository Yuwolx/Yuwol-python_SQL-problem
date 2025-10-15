dials = ['0','0','0','ABC','DEF','GHI','JKL','MNO','PQRS','TUV','WXYZ']
x = str(input())
z = 0
for i in x:
  for j in range(len(dials)):
    if i in dials[j]:
      z += j

print(z)