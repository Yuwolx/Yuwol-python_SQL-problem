col_paper = int(input())

canvas = [[0] * 100 for _ in range(100)]

for i in range(col_paper):
  x,y = map(int,input().split())
  for j in range(x,x+10):
    for k in range(y,y+10):
      canvas[j][k] = 1
sum = 0
for j in range(100):
  for k in range(100):
    if canvas[j][k] == 1:
      sum += 1

print(sum)