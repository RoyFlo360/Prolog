from math import sin, cos, pi, atan2
from pylab import *


def copoVonKoch(lado, n):
    x_vertice1 = 0
    y_vertice1 = 0

    x_vertice2 = lado * cos(2 * pi / 3)
    y_vertice2 = lado * sin(2 * pi / 3)

    x_vertice3 = lado * cos(pi / 3)
    y_vertice3 = lado * sin(pi / 3)

    curvaVonKoch(x_vertice1, y_vertice1, x_vertice2, y_vertice2, n)
    curvaVonKoch(x_vertice2, y_vertice2, x_vertice3, y_vertice3, n)
    curvaVonKoch(x_vertice3, y_vertice3, x_vertice1, y_vertice1, n)


def curvaVonKoch(xi, yi, xf, yf, n):
    if n == 0:
        plot([xi, xf], [yi, yf], lw=1.0, color='purple')
    elif n > 0:
        x1 = xi + (xf - xi) / 3.0
        y1 = yi + (yf - yi) / 3.0

        x3 = xf - (xf - xi) / 3.0
        y3 = yf - (yf - yi) / 3.0

        radio = hypot(x3 - x1, y3 - y1)
        alpha = atan2((y3 - y1), (x3 - x1))
        alpha += pi / 3.0
        x2 = x1 + radio * cos(alpha)
        y2 = y1 + radio * sin(alpha)

        curvaVonKoch(xi, yi, x1, y1, n - 1)
        curvaVonKoch(x1, y1, x2, y2, n - 1)
        curvaVonKoch(x2, y2, x3, y3, n - 1)
        curvaVonKoch(x3, y3, xf, yf, n - 1)


def dibuja(lado, n):
    title('Copo De Nieve De Koch')
    xlim(-lado, lado)
    copoVonKoch(lado, n)
    show()



print('COPO DE VON KOCH\n')
n = int(input('¿Hasta qué iteración quieres dibujar? '))
lado = float(input('Indica la longitud del lado inicial. '))
dibuja(lado, n)
