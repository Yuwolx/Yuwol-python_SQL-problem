#5086
while True:
  x,y = map(int,input().split())
  if x == 0 and y == 0:
      break
  
  elif x == 0  or y == 0:
    print('neither')

  elif y%x == 0:
    print('factor')

  elif x%y == 0:
    print('multiple')

  else:
    print('neither')