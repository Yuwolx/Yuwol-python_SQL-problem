N = int(input())

if N == 1:
    print(1)
else:
    count = 1  # 몇 번째 육각형인지를 나타내는 변수
    start = 2  # 현재 육각형의 시작 방 번호
    step = 6   # 육각형을 이루는 방의 개수

    while True:
        if start <= N < start + step * count:
            print(count + 1)
            break
        else:
            start += step * count
            count += 1
