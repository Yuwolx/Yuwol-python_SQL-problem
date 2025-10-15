N = int(input())
towers = list(map(int,input().split()))
stack = []
result = []

for x in range(N):
    invest = towers[x]
    while stack and stack[-1][0] < invest:
        stack.pop()
    
    if not stack:
        result.append(0)
    else:
        result.append(stack[-1][1])

    stack.append([invest,x+1])



print(*result)