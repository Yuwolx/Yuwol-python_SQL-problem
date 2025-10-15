n = str(input())
n = n.upper()
rist = [0]*26
alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
for i in range(len(n)):
  x = n[i]
  y = alphabet.index(x)
  rist[y] +=  1

z = max(rist)
max_z = []

for i in range(26):
  if rist[i] == z:
    max_z.append(i)

if len(max_z) > 1:
  print('?')
else:
  print(alphabet[max_z[0]]) 