#2501
N,C = map(int,input().split())
yaksu = []

for i in range(1,N+1):
  if N%i ==0:
    yaksu.append(i)

if len(yaksu) < C:
  print(0)
else:
  print(yaksu[C-1])