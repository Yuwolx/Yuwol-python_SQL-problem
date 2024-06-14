H,M = map(int,input().split())
T = int(input())

if (M+T)//60 + H >= 24:
  print((M+T)//60 + H -24,(M+T)%60)
else:
  print((M+T)//60 + H,(M+T)%60)