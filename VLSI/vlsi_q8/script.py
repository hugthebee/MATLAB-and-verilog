import os
searchtxt = 'set temp = 3.5899020512716703'

temparray = []

with open("temp.txt",'r') as f:
    for line in f:
        line = line.strip()
        temparray.append(float(line))

print(*temparray)

for t in temparray:
    replacetxt = f"set temp = {t}"
    with open("q8b.cir", 'r') as fp:
        data = fp.read()
        data = data.replace(searchtxt, replacetxt)
    with open("q8b.cir", 'w') as f1:
        f1.write(data)
        searchtxt = replacetxt
    os.system("ngspice q8b.cir")
