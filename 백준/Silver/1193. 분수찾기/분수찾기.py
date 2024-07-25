N = int(input())

line = 1
while N > line:
    N -= line
    line += 1

if line % 2 == 1:
    numerator = line - N + 1
    denominator = N
else:
    numerator = N
    denominator = line - N + 1

print(f"{numerator}/{denominator}")
