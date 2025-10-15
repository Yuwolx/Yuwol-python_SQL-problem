N = int(input())

# 둘째 줄에서 N개의 정수를 입력 받아 리스트로 저장한다
numbers = list(map(int, input().split()))

# 셋째 줄에서 찾으려는 정수 v를 입력 받는다
v = int(input())

# numbers 리스트에서 v의 개수를 세어서 출력한다
count = numbers.count(v)

# 결과 출력
print(count)