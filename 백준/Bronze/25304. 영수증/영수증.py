X = int(input())
N = int(input())
ins = 0
for i in range(1,N+1):
 a,b = map(int,input().split())
 ins += a*b

if X == ins:
  print('Yes')
else:
  print('No')