import turtle
from tkinter import *
def draw_sierpinski(length,depth):
    if depth==0:
        for i in range(0,3):
            t.fd(length)
            t.left(120)
    else:
        draw_sierpinski(length/2,depth-1)
        t.fd(length/2)
        draw_sierpinski(length/2,depth-1)
        t.bk(length/2)
        t.left(60)
        t.fd(length/2)
        t.right(60)
        draw_sierpinski(length/2,depth-1)
        t.left(60)
        t.bk(length/2)
        t.right(60)
d=int(input("Cuantos triangulos de profundidad quiere?\n"))
root = Tk()
root.title("Sierpinski con " + str(d) + " triangulos de profundidad" )
frame=Frame(root,width=3000,height=3000)
frame.pack(expand=True, fill=BOTH)
canvas=Canvas(frame,bg='#FFFFFF',width=3000 ,height=3000)
canvas.configure(scrollregion = canvas.bbox("all"))
hbar=Scrollbar(frame,orient=HORIZONTAL)
hbar.pack(side=BOTTOM,fill=X)
hbar.config(command=canvas.xview)
vbar=Scrollbar(frame,orient=VERTICAL)
vbar.pack(side=RIGHT,fill=Y)
vbar.config(command=canvas.yview)
canvas.config(width=3000,height=3000)
canvas.config(xscrollcommand=hbar.set, yscrollcommand=vbar.set)
canvas.pack(side=LEFT,expand=True,fill=BOTH)
canvas.xview_moveto(0)
canvas.yview_moveto(0)

#turtle.ScrolledCanvas(canvas)
cv = canvas
window = turtle.TurtleScreen(cv)
t = turtle.RawTurtle(window)
if (d <=4):
    l=d*100
elif(d <= 7):
    l=d*300
    t.speed(3)
else:
    l=d*900
    t.speed(0)
draw_sierpinski(l,d)
root.mainloop()