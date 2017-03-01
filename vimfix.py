import os
import getpass
import sys

name = getpass.getuser()

path = '/home/%s'%name + '/.vim'

def Looper(term):
    for dirName, subdirList, fileList in os.walk(path):
        for fileName in fileList:
            if ".vim" in fileName.lower() in fileList:
                file = os.path.join(dirName,fileName)
                os.system("%s "%term + "-c 'dos2unix -f %s'"%file) 

if os.path.isfile('/usr/bin/zsh'):
    Looper("zsh")
    sys.exit('Probably the job is done!')
elif os.path.isfile('/usr/bin/bash'):
    Looper("bash")
    sys.exit('Probably the job is done!')
else:
    print "We haven't found your terminal interpreter a.k.a (bash,zsh,tmux etc.. etc..)"
    tname = raw_input("Please write the path of your interpreter ex: /usr/bin/bash \n")
    Looper(tname)
    sys.exit('Probably the job is done!')
    
