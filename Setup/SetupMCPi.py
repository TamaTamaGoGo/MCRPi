from tkinter import messeagebox
import subprocess

def c(check, command):
    if check = y:
        subprocess.check_call(command)
    else:
        subprocess.call(command)
        
def update_raspi():
    c(no, sudo apt full-upgrade)
    second_part
    
def second_part():
    pass
    
try:
    #subprocess.call('mkdir Download MCPi')
 #   c.(y, 'mkdir MCPi')
 #   subprocess.check_call('./SetupMCPi')
    # askquestion
    res = messagebox.askquestion("Info", "Do you want to update your Raspi? Sometime it takes a long time!")
    print("askquestion", res)
    if res = yes:
        update_raspi
    else:
        second_part
#    subprocess.check_call
#    subprocess.check_call('cd MCPi')
except:
    print("First Setup failed")
    p=subprocess.Popen('SetupMCPi.py',shell=False)
    p.kill()
    
print("First Setup Success")
