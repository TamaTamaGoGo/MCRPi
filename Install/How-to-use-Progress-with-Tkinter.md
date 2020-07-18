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


# Another site

プログレスバーを使ってみます。プログレスバーは次のように作ります。

    progress = gtk.ProgressBar()
    progress.set_text("0%")
    gtk_progress_bar_set_text() で初期の文字列を "0%" に設定しています。

プログレスバーを動かすために、タイマーを使います。

    timer = gtk.timeout_add(500, timerEvent, progress)

500 ms ごとに timerEvent() を呼び出し、引数に progress を渡します。timerEvent() は次のようになっています。

    def timerEvent(progress):
        global fraction

        fraction += 10
        if fraction > 100:
            fraction = 0

        progress.set_text("%d%%" % fraction)
        progress.set_fraction(fraction/100.)

        return True
fraction がプログレスバーのパーセンテージを表わします。set_text() でプログレスバーの文字列を更新し、set_fraction() でプログレスバーの進み具合を更新します。返り値を True にしておけば、timerEvent() は再びタイマーから呼び出されます。

不要になったタイマーは gtk.timeout_remove() で取り除きます。

    gtk.timeout_remove(timer)



プログレスバーを使ってみます。プログレスバーは次のように作ります。

progress = gtk.ProgressBar()
progress.set_text("0%")
gtk_progress_bar_set_text() で初期の文字列を "0%" に設定しています。

プログレスバーを動かすために、タイマーを使います。

timer = gtk.timeout_add(500, timerEvent, progress)
500 ms ごとに timerEvent() を呼び出し、引数に progress を渡します。timerEvent() は次のようになっています。

def timerEvent(progress):
    global fraction

    fraction += 10
    if fraction > 100:
        fraction = 0

    progress.set_text("%d%%" % fraction)
    progress.set_fraction(fraction/100.)

    return True
fraction がプログレスバーのパーセンテージを表わします。set_text() でプログレスバーの文字列を更新し、set_fraction() でプログレスバーの進み具合を更新します。返り値を True にしておけば、timerEvent() は再びタイマーから呼び出されます。

不要になったタイマーは gtk.timeout_remove() で取り除きます。

gtk.timeout_remove(timer)
