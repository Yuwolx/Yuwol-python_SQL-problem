N = int(input())

for i in range(N):
  x = int(input())
  q = x//25
  d = (x-q*25)//10
  n = (x-q*25 - d*10)//5
  p = x-q*25 - d*10 - n*5
  print(q,d,n,p, end = ' ')