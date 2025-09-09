rist = [0]*26
count = 0
alphabet = 'abcdefghijklmnopqrstuvwxyz'
N = int(input())
for i in range(N):
  x=str(input())
  rist = [0]*26
  group_word = True

  for j in range(len(x)):
    y = x[j]
    z = alphabet.index(y)

    if rist[z] == 0:
      rist[z] = 1
    elif rist[z] == 1 and y != x[j-1]:
      group_word = False
      break
  if group_word:
    count += 1

print(count)