import shades
import random

canvas = shades.Canvas(1500, 1000)

shade_one = shades.BlockColor((97, 196, 227))
shade_two = shades.BlockColor((247, 228, 91))
shade_three = shades.BlockColor((251, 5, 28))
shade_four = shades.BlockColor((23, 79, 114))
shades = [shade_one, shade_two, shade_three, shade_four]

size = 10
density = 0.0003

for x in range(0, canvas.width, size):
  for y in range(0, canvas.height, size):
    if random.random() < density:
      random.choice(shades).rectangle(canvas, (x,y), size, size)

canvas.show()
