#2896
import math

A, B, V = map(int,input().split())

D  = math.ceil((V-A)/(A-B)) + 1
print(D)