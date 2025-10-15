A,B = map(int,input().split())
numbers = list(map(int, input().split()))

for i in numbers:
  if i < B:
   print(i ,end =' ')