def fileFormat(listIn):
    listOut = ""
    for time in listIn:
        listOut = listOut + str(time) + ','
    listOut = listOut[:-1]
    listOut = listOut + "\n"
    return listOut

fileIn = open("2016MTBFcopy.csv",'r')
fileOut = open("2016MTBFnew.csv",'w')

#open input file
data = fileIn.readlines()

#iterate through lines in file
for lineIn in data:

    #split each line
    lineData = lineIn.split(",")
    
    #check for header line
    if lineData[0] == "April":
        fileOut.write(fileFormat(lineData))
    else:
        lineOut = lineData
        
        #iterate through each line
        for i,time in enumerate(lineData[1:]):

            #format time data to integer seconds
            newNum = 0;
            for num in time.split():
                if num[-1] == 'd':
                    newNum = newNum + int(num[0:-1]) * 86400
                elif num[-1] == 'h':
                    newNum = newNum + int(num[0:-1]) * 3600
                elif num[-1] == 'm':
                    newNum = newNum + int(num[0:-1]) * 60
                elif num[-1] == 's':
                    newNum = newNum + int(num[0:-1])
                else:
                    newNum = newNum

            #enter integer seconds into lineOut
            lineOut[i+1] = newNum

        #write lineOut to file
        fileOut.write(fileFormat(lineOut))
            
fileOut.close()
fileIn.close()


