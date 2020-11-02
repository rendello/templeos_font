#!/usr/bin/python3.7

with open("chars.txt") as f:
    text = f.read()
    for i in range(text.count(" ")):
        if i == 0:
            text = text.replace(' ',"REPLACE",1)
        else:
            text = text.replace(' ',chr(ord("\uE000")+i),1)

    text = text.replace("REPLACE"," ",1)
    print(text)
