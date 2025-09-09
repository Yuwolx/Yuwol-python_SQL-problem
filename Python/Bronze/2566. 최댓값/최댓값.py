matrix = []
maxis = -1
for i in range(9):
    x = list(map(int, input().split()))
    matrix.append(x)

for i in range(9):
  for j in range(9):
    if matrix[i][j] > maxis:
      maxis = matrix[i][j]
      max_row = i + 1
      max_col = j + 1



print(maxis)
print(max_row, max_col, end = ' ')