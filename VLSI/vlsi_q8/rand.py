import random
f = open("temp.txt", "w")
for i in range(0,10):
    x = random.uniform(0,80)
    x = str(x)
    f.write(x)
    f.write("\n")
f.close()