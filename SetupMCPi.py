from tkinter import messeagebox
import subprocess


try:
    #subprocess.call('mkdir Download MCPi')
    subprocess.check_call('mkdir MCPi')
    subprocess.check_call
    subprocess.check_call('cd MCPi')
    subprocess.check_call('')
    #subprocess.call('wget https://github.com......')
except:
    print("Setup failed")
