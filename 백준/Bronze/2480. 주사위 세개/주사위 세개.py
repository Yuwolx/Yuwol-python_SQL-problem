# 2480 주사위 세개
A,B,C = map(int,input().split())
if A == B and  B == C :
    print(10000 + A * 1000)
elif A != B and B != C and A != C:
    print(max(A,B,C)*100)
elif A == B and A != C:
    print(1000 + A * 100) 
elif A == C and A != B:
    print(1000 + A * 100)
elif C == B and A != C:
    print(1000 + C * 100)