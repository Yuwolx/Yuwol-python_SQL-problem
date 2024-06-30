# 입력
N = int(input())  # 과목 수
scores = list(map(int, input().split()))  # 과목 점수 리스트

# 최대 점수
max_score = max(scores)

# 새로운 점수 계산 및 리스트 생성
new_scores = [(score / max_score) * 100 for score in scores]

# 새로운 평균 계산
new_average = sum(new_scores) / N

# 결과 출력
print(new_average)
