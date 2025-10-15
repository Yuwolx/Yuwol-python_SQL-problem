T = int(input())
for i in range(T):
  R,S = map(str,input().split())
  for j in range(len(S)):
    x = S[j]*int(R)
    print(x, end='')
  print() 