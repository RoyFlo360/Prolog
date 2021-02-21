from PIL import Image, ImageDraw
from collections import defaultdict
from math import floor, ceil
from math import log, log2

MAX_ITER = int(input("Cuantas iteraciones quiere para Mandelbrot?\n"))
name = str(input("Que nombre le pongo a la imagen?\n"))
print("Espere un momento en lo que se genera su imagen")
def mandelbrot(c):
    z = 0
    n = 0
    while abs(z) <= 2 and n < MAX_ITER:
        z = z*z + c
        n += 1
    if n == MAX_ITER:
        return MAX_ITER
    return n + 1 - log(log2(abs(z)))
def linear_interpolation(color1, color2, t):
    return color1 * (1 - t) + color2 * t
# Image size (pixels)
WIDTH = 1920
HEIGHT = 1080
# Plot window
RE_START = -2
RE_END = 1
IM_START = -1
IM_END = 1
im = Image.new('HSV', (WIDTH, HEIGHT), (0, 0, 0))
draw = ImageDraw.Draw(im)
for x in range(0, WIDTH):
    for y in range(0, HEIGHT):
        # Convert pixel coordinate to complex number
        c = complex(RE_START + (x / WIDTH) * (RE_END - RE_START),
                    IM_START + (y / HEIGHT) * (IM_END - IM_START))
        # Compute the number of iterations
        m = mandelbrot(c)
        # The color depends on the number of iterations
        hue = int(255 * m / MAX_ITER)
        saturation = 255
        value = 255 if m < MAX_ITER else 0
        # Plot the point
        draw.point([x, y], (hue, saturation, value))
im.convert('RGB').save(name + '.jpeg', 'JPEG')
print("Listo!!!")
