import numpy as np
import sys
#import added by pranaw
import cmath
import array
import contextlib
import wave
import sys
import json
#import urllib2
from math import sin, cos, pi, log, sqrt
import subprocess
import requests, json;
from pathlib import Path

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
f1=open("pranaw.txt", "w", encoding='utf-8');
ff=open("Atish.txt", "w", encoding='utf-8');
f1.write("pranaw1")  
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

f1.write("pranaw2") 
with open("noOfPhonesInEachWord") as f:
    noOfPhonesInEachWord = f.readlines()
# remove whitespace characters like `\n` at the end of each line
noOfPhonesInEachWord = [x.strip() for x in noOfPhonesInEachWord]
noOfPhonesInEachWord = np.array(noOfPhonesInEachWord,dtype=np.int32)


#for i in noOfPhonesInEachWord:
#	print("atish", i)

f1.write("pranaw3") 
with open("noOfFramesForEachPhone") as f:
    noOfFramesForEachPhone = f.readlines()
    print("noOfFramesForEachPhone=",noOfFramesForEachPhone)
    
# remove whitespace characters like `\n` at the end of each line
#noOfFramesForEachPhone = [x.strip() for x in noOfFramesForEachPhone] 
noOfFramesForEachPhone = [x.strip() for x in noOfFramesForEachPhone] 
noOfFramesForEachPhone = np.array(noOfFramesForEachPhone,dtype=np.int32)
f1.write("pranaw4") 
with open("phone_list") as f:
    phone_list = f.readlines()
# remove whitespace characters like `\n` at the end of each line
phone_list = [x.strip() for x in phone_list] 

wordNumber=0
#intextfileName='/var/www/tts1/wav_output/fest_inp' + marksid + '.txt'
intextfileName='test_words'
print("intextfileName=", intextfileName);
ftext=open(intextfileName, "r", encoding='utf-8');
#ftext=open(intextfileName, "r", encoding='utf-8');
textcontent=ftext.read();
textwords=textcontent.split()
textwordcount=len(textcontent.split())

str1=str(textcontent)
f1.write("pranaw5") 
data1 = '{"id":"' + marksid + '", "data":[ ' 
l=0
#print("noOfPhonesInEachWord="+len(noOfPhonesInEachWord) )

wordNumber=0
mylen=len(noOfPhonesInEachWord)
for i in noOfPhonesInEachWord:
        f1.write("pranaw6") 
        checkSIL()
        f1.write("pranaw7") 
        boundaryStart = count + 1
        pointer=0
        for j in range(1, i+1):       ##count no of frames from each word
                count= count +  noOfFramesForEachPhone[pointer]
                pointer=pointer+1
        wordNumber=wordNumber+1
        f1.write("pranaw8") 
        if boundaryType == "frame":
                print("Word"+str(wordNumber)+" "+str(boundaryStart)+" "+str(count))
        else:
                print("Word"+str(wordNumber)+" "+str((boundaryStart-1)*framePeriod+1)+" "+str(count*framePeriod))
        f1.write("pranaw9")
        str2=str(textwords[wordNumber - 1])
        #print("str2="+   str2)
        f1.write("pranaw10")
        charposition = str1.find(str2, l) 
        f1.write("pranaw11")
        l = l + len(str2)        
        #data1 = data1 + '{"Word": "' + str(textwords[wordNumber - 1]) + '", "Position": ' + str((boundaryStart-1)*framePeriod+1) + ', "CharPosition": ' + str(charposition) + '}'
        data1 = data1 + '{"Word": "' + str(textwords[wordNumber - 1]) + '", "Position": ' + str(((boundaryStart-1)*framePeriod + 1)) + ', "CharPosition": ' + str(charposition) + '}'
        #print("wordNumber="+ str(wordNumber) +" len(textwords)-1=" + str(len(textwords)-1))
        f1.write("pranaw12")
        if wordNumber != mylen:
                data1 = data1 + ','               
        else:
                data1 = data1 + ']'

        f1.write("pranaw13")
        #print("data1=", data1);
         
        f1.write("data1=%s " % (data1))  
#if boundaryType == "frame":
#	print("SIL "+str(count+1)+" "+str(count+noOfFramesForEachPhone[pointer]))
#else:
#	print("SIL "+str((count*framePeriod)+1)+" "+str((count+noOfFramesForEachPhone#[pointer])*framePeriod))
f1.write("pranaw14")
data1 = data1 + '}'
#print("data1=", data1);
ff.write(data1)

headers = {
    'Content-Type': 'application/json',
    }
response = requests.post('http://localhost:3000/marks', headers=headers, data=data1.encode('utf-8')) 
f1.write("pranaw15")
#print(response) 



	

