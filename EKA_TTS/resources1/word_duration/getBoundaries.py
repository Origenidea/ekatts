import numpy as np
import sys

pointer=0
count=0

if len(sys.argv) != 4:
	print("---------------------------------------------------------")
	print("Usage : python  getBoundaries.py boundaryType framePeriod")
	print('boundaryType = "frame"/"time"')
	print("framePeriod = frame period (in milliseconds)")
	print('Example: python getBoundaries.py "time" 5')
	print("---------------------------------------------------------")
	sys.exit()


boundaryType=sys.argv[1]
framePeriod=int(sys.argv[2]) #in milliseconds
marksid=sys.argv[3]
f2=open("resource.txt", "w", encoding='utf-8');
intextfileName='test_words'
ftext=open(intextfileName, "r", encoding='utf-8');
#ftext=open(intextfileName, "r", encoding='utf-8');
textcontent=ftext.read();
textwords=textcontent.split()
textwordcount=len(textcontent.split())

str1=str(textcontent) 
data1 = '{"id":"' + marksid + '", "data":[ ' 
l=0


def checkSIL():
	global pointer
	global count
	if phone_list[pointer] == "SIL" :
		if boundaryType == "frame":
			str1="SIL "+ str(count+1)+" "+str(count+(noOfFramesForEachPhone[pointer]))
		elif boundaryType == "time":
			str1="SIL "+ str(count*framePeriod)+" "+str((count+noOfFramesForEachPhone[pointer])*framePeriod)
		else:
			print("invalid boundary type")
			sys.exit()
		print(str1)
		count=count+noOfFramesForEachPhone[pointer]
		pointer=pointer+1
	return

with open("noOfPhonesInEachWord") as f:
    noOfPhonesInEachWord = f.readlines()
# remove whitespace characters like `\n` at the end of each line
noOfPhonesInEachWord = [x.strip() for x in noOfPhonesInEachWord] 
noOfPhonesInEachWord = np.array(noOfPhonesInEachWord,dtype=np.int32)

with open("noOfFramesForEachPhone") as f:
    noOfFramesForEachPhone = f.readlines()
# remove whitespace characters like `\n` at the end of each line
noOfFramesForEachPhone = [x.strip() for x in noOfFramesForEachPhone] 
noOfFramesForEachPhone = np.array(noOfFramesForEachPhone,dtype=np.int32)

with open("phone_list") as f:
    phone_list = f.readlines()
# remove whitespace characters like `\n` at the end of each line
phone_list = [x.strip() for x in phone_list] 

wordNumber=0
mylen=len(noOfPhonesInEachWord)
for i in noOfPhonesInEachWord:
	wordNumber=wordNumber+1
	checkSIL()
	boundaryStart=count+1
	for j in range(1, i+1):
		count= count +  noOfFramesForEachPhone[pointer]
		pointer=pointer+1
	str2=str(textwords[wordNumber - 1])
        #print("str2="+   str2)
	charposition = str1.find(str2, l) 
	#if boundaryType == "frame":
		#print("Word"+str(wordNumber)+" "+str(boundaryStart)+" "+str(count))
	#else:
		#print("Word"+str(wordNumber)+" "+str((boundaryStart-1)*framePeriod+1)+" "+str(count*framePeriod))
	#data1 = data1 + '{"Word": "' + str(textwords[wordNumber - 1]) + '", "Position": ' + str(((boundaryStart-1)*framePeriod + 1)) + ', "CharPosition": ' + str(charposition) + '}' 
	f2.write(str(textwords[wordNumber - 1])+"\t"+str(((boundaryStart-1)*framePeriod + 1))+"\t"+str(charposition)+"\t"+str(i)+"\n") 
	




#if boundaryType == "frame":
	#print("SIL "+str(count+1)+" "+str(count+noOfFramesForEachPhone[pointer]))
#else:
	#print("SIL "+str((count*framePeriod)+1)+" "+str((count+noOfFramesForEachPhone[pointer])*framePeriod))
	

