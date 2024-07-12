string = input()
dicts = {
    'c=': '*',
    'c-': '*',
    'dz=': '*',
    'd-': '*',
    'lj': '*',
    'nj': '*',
    's=': '*',
    'z=': '*'
}

# 문자열을 변환하기 위해 딕셔너리의 키-값 쌍을 사용하여 변환 규칙 적용
for key, value in dicts.items():
    string = string.replace(key, value)

# 변환된 문자열의 길이 출력
print(len(string))