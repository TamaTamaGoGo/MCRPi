    import tkinter
    from tkinter import ttk
    import time    #追加

次に、プログレスバーの「mode」オプションを「determinate」に修正します。

self.progress.configure(
    value=0,
    mode='determinate',    #修正
    maximum=100
    )
最後はstartbarメソッドの修正です。

def startbar(self):
    i = 1
    while i <= 100:
        self.progress.configure(value=i)
        self.progress.update()
        i = i + 1
        time.sleep(0.02)
whileループを使ってvalueを1から100まで1ずつ増やしていくことで、Progressbarを進めていきます。

但し、self.progress.update()を入れないと、画面の更新がされないので必ず入れてください。
