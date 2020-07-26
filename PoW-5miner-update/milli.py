import os

lines=[]
with open('milli.txt') as f:
    lines = f.read().splitlines()

for x in lines:
    print(x)
