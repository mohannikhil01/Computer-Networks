"""First argument must sepcify the path to the extracted files, second is file to write the required Ip prefixes, mention the prefix to screen"""

from os.path import os
from os import listdir

import sys

print sys.argv[1]
print sys.argv[2]
files = os.listdir(sys.argv[1])
flag = False

#print sys.argv[3].strip()

for openFIle in files:
	print openFIle

f2 = open(sys.argv[2], 'w')
for openFile in files:
	openFile = sys.argv[1] + "/" + openFile 
	#print openFile
	with open(openFile) as f:
		for line in f:
			if "PREFIX" in line and sys.argv[3].strip() not in line:
				flag = False
			if sys.argv[3].strip() in line:
				flag = True
			if flag == True:
				if "TIME" not in line and "TYPE" not in line:
					f2.write(str(line))
				
f2.close()
    	
