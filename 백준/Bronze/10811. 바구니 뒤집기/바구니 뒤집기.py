N,M =map(int,input().split())
yu =[0]*(N)
for x in range (0,N):
 yu[x] = x+1
 #yu = [x + 1 for x in range(N)]

for y in range(M):
  i,j = map(int,input().split())
  yu[i-1:j] = yu[i-1:j][::-1]
  #원래 리스트에 대입 #역순으로 변환
for i in range (0,N):
 print(yu[i], end = ' ')