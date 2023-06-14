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
#from pathlib import Path

with open('JSon.txt', 'r', encoding='utf-8') as myfile:
    data1=myfile.read()

#ff=open("RAAM.txt", "w", encoding='utf-8')
#data1=sys.argv[1]
#ff.write(data1)

headers = {
    'Content-Type': 'application/json',
    }
response = requests.post('http://localhost:3000/marks', headers=headers, data=data1.encode('utf-8')) 
