while True:
  number = int(input())
  yaksu = []
  if number == -1:
    break

  for i in range(1,number):
    if number % i ==0:
      yaksu.append(i)

  if sum(yaksu) == number:
    print(f"{number} = {' + '.join(map(str, yaksu))}")

  elif sum(yaksu) != number:
    print(number,'is NOT perfect.')

