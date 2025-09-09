#10809
S = str(input())
rist = [-1]*26
alphabet = 'abcdefghijklmnopqrstuvwxyz'
for i in range(len(S)):
  x = S[i]
  y = alphabet.index(x)
  if rist[y] == -1:
    rist[y] = i

# 각 값을 문자열로 변환하고, 공백으로 구분하여 출력합니다.
print(" ".join(map(str, rist)))