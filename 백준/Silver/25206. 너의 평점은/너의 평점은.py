#25206

# 학점 체계 정의
grade_dict = {
    'A+': 4.5,
    'A0': 4.0,
    'B+': 3.5,
    'B0': 3.0,
    'C+': 2.5,
    'C0': 2.0,
    'D+': 1.5,
    'D0': 1.0,
    'F': 0.0
}
total_point = 0
credit = 0
for i in range(20):
  N,G,A = input().split()
  if A == 'P':
    continue
  
  point = grade_dict[A] * float(G)
  total_point += point

  credit += float(G)

last_grade = total_point/credit

print(last_grade)