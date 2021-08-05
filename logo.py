import sys as s
import time as t
import os
#welcome Screen
logo="""\033[1;33m 
──────────╔╗─────────────
──────────║║─────────────
╔╗╔╗╔╗╔══╗║║─╔══╗╔══╗╔╗╔╗
║╚╝╚╝║║║═╣║║─║╔═╝║╔╗║║╚╝║
╚╗╔╗╔╝║║═╣║╚╗║╚═╗║╚╝║║║║║
─╚╝╚╝─╚══╝╚═╝╚══╝╚══╝╚╩╩╝
"""
def jalan(x):# function write
    for i in x+"\n":
        s.stdout.write(i)
        s.stdout.flush()
        t.sleep(0.01)
jalan(logo)
t.sleep(2)
os.system("clear")
jalan("\t\033[33mdb   dD db   db  .d8b.  db      d888888b d8888b. ")
t.sleep(0.03)
jalan("\t\033[30m88 ,8P' 88   88 d8' `8b 88        `88'   88  `8D ")
t.sleep(0.03)
jalan("\t\033[33m88,8P   88ooo88 88ooo88 88         88    88   88 ")
t.sleep(0.03)
jalan("\t\033[30m88`8b   88~~~88 88~~~88 88         88    88   88 ")
t.sleep(0.03)
jalan("\t\033[33m88 `88. 88   88 88   88 88booo.   .88.   88  .8D ")
t.sleep(0.03)
jalan("\t\033[30m88   YD 88   88 88   88 Y88888P Y888888P Y8888D'")
