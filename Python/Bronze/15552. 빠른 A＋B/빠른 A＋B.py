import sys

n = int(sys.stdin.readline().rstrip())  # 첫 줄을 읽고 정수로 변환
for _ in range(n):
    A, B = map(int, sys.stdin.readline().rstrip().split())  # 각 줄을 읽고 정수로 변환 후 split
    print(A + B)  # A와 B를 더한 값을 출력
