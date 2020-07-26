import statistics
import sys
stringArg = sys.argv[1]
print(stringArg)
data = []
with open(stringArg,'r') as f:
    for line in f:
        fields = line.split()
        rowdata = map(float, fields)
        data.extend(rowdata)

#sort data first
data.sort()

print("AVG: ",sum(data)/len(data))
#print(sum(data)/len(data))
print("MED: ", statistics.median(data))
#print(statistics.median(data))
print("MAX: ", max(data))
#print(max(data))
print("MIN: ", min(data))
#print(min(data))
print("STDEV: ",statistics.stdev(data))
