import sys
sys.setrecursionlimit(10**6) 
input = sys.stdin.readline   

n, m = map(int, input().split())
edges = [[] for _ in range(n+1)]
for _ in range(m):
    x, y = map(int, input().split())
    edges[x].append(y)
    edges[y].append(x)

visited = [False] * (n+1)

def dfs(v):
    visited[v] = True
    for i in edges[v]:
        if not visited[i]:
            dfs(i)

result = 0
for i in range(1, n+1):
    if not visited[i]:
        dfs(i)
        result += 1

print(result)
