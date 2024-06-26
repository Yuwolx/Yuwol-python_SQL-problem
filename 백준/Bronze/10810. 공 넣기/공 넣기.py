N,M =map(int,input().split())

yu = [0]*(N+1)

for x in range(1,M+1):
 i, j, k = map(int,input().split())
 for y in range(i,j+1):
  yu[y] = k

for z in range(1,N+1):
    print(yu[z], end = ' ')