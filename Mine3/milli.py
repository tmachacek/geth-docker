import os

lines=[]
with open('milli.txt') as f:
    lines = f.read().splitlines()

for x in lines:
    print(x)
newList = []
for i in lines:
    newList.append(i.split('.')[0])

for l in newList:
    print("3."+l)
