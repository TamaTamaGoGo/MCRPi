from tkinter import messeagebox
import subprocess


try:
    #subprocess.call('mkdir Download MCPi')
    subprocess.check_call('mkdir MCPi')
    subprocess.check_call('./SetupMCPi')
    subprocess.check_call('cd MCPi')
#   subprocess.check_call('')
    #subprocess.call('wget https://github.com......')
except:
    print("Setup failed")
    p=subprocess.Popen('a.exe args',shell=True)
    p.kill()
    
print("Setup Success")
