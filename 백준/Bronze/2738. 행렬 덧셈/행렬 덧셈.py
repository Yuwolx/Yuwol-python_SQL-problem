
N, M = map(int, input().split())

matrix1 = []
for i in range(N):
    x = list(map(int, input().split()))
    matrix1.append(x)

matrix2 = []
for i in range(N):
    x = list(map(int, input().split()))
    matrix2.append(x)

last_matrix = []
for i in range(N):
    y = []
    for j in range(M):
        y.append(matrix1[i][j] + matrix2[i][j])
    last_matrix.append(y)

for row in last_matrix:
    print(' '.join(map(str, row)))
