def convert_from_decimal(number, base):
    # 10진법 숫자를 N진법으로 변환하는 함수
    if number == 0:
        return '0'
    
    digits = []
    while number > 0:
        remainder = number % base
        if remainder < 10:
            digits.append(str(remainder))
        else:
            # 10 이상의 나머지에 대해 알파벳 사용
            digits.append(chr(remainder - 10 + ord('A')))
        number //= base
    
    # 변환된 숫자를 뒤집어 올바른 순서로 배열
    return ''.join(reversed(digits))

# 입력 받기
number, base = map(int, input().split())

# 변환 및 출력
result = convert_from_decimal(number, base)
print(result)
