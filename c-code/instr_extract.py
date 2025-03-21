import re

myfile = open("main_d","r")
mydumpfile = open("dumpfile.txt", "a")
final_list = []
data = myfile.read()

data_into_list = data.replace('\t',' ').split('\n')

for a in data_into_list:
    m = re.search("[0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f][0-9a-f]", a)
    if m:
        mydumpfile.write(f"{a[m.start():m.end()]}\n")
        
myfile.close()
mydumpfile.close()