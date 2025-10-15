N,M =map(int,input().split())
yu =[0]*(N)
for x in range (0,N):
 yu[x] = x+1

for y in range(0,M):
  i,j = map(int,input().split())
  q = yu[i-1]
  p = yu[j-1]
  yu[i-1] = p
  yu[j-1] = q

for z in range(0,N):
  print(yu[z], end = ' ')