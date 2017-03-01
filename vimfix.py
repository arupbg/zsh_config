# Plugin Vim Fixer
# Fixes ^M and other errors provided by Windows text editors
# It may also cure stress!

import os

path = '/home/enrique/.vim'
lstvim = []


for dirName, subdirList, fileList in os.walk(path):
    for fileName in fileList:
        if ".vim" in fileName.lower() in fileList:
            file = os.path.join(dirName,fileName)
            #print file 
            os.system("zsh -c 'dos2unix -f %s'"%file)
            #lstvim.append(os.path.join(dirName,fileName))



