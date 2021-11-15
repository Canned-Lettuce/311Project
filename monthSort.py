def fileFormat(listIn):
    listOut = ""
    for time in listIn:
        listOut = listOut + str(time) + ','
    listOut = listOut[:-1]
    listOut = listOut + "\n"
    return listOut

fileIn = open("2020MTBFnew.csv",'r')
fileOut = open("2020MTBFsorted.csv",'w')

data = fileIn.readlines()

monthIndex = [0,1,2,3,4,5,6,7,8,9,10,11]
lineIn = data[0].split(',')


monthIndex = [4,3,7,0,8,6,5,1,11,10,9,2]
lineNum = 0

for lineIn in data:

    lineData = lineIn.split(',')
    lineData[11] = lineData[11].strip("\n")
    if lineNum != 0:
        lineOut = [lineData[0]]
        lineData = lineData[1:]
    else:
        lineOut = ['']
    for i in range(12):
        
        lineOut.append(lineData[monthIndex[i]].strip("\n"))

    fileOut.write(fileFormat(lineOut))
    lineNum = 1

fileOut.close()
fileIn.close()
