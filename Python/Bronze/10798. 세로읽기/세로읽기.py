rist = []
for i in range(5):
    x = list(input())
    rist.append(x)

maxis = max(len(row) for row in rist)

last = []
for j in range(maxis):
    for i in range(5):
        if j < len(rist[i]):
            last.append(rist[i][j])

print(''.join(last))