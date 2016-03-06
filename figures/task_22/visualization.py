from math import *
import random
import matplotlib.pyplot as plt
import csv
import sys

f = open('7.csv', 'r')
try:
    p = []
    i = 0
    for line in f.readlines():
        t,x,y,theta = line.strip().split(';')
        if i > 0 and i % 30 == 0:
            li = []
            li.append(float(x) * 100)
            li.append(float(y) * 100)
            li.append(float(theta))
            p.append(li)
        i = i + 1
finally:
    f.close()

fig = plt.figure('Robot in the world', figsize=(12.35, 7))

x_min = -60
x_max = 280
y_min = 10
y_max = 190

# draw coordinate grid for plotting
grid = [x_min, x_max, y_min, y_max]
plt.axis(grid)
plt.grid(b=True, which='major', color='0.75', linestyle='--')
plt.xticks([i for i in range(x_min, x_max, 20)])
plt.yticks([i for i in range(y_min, y_max, 10)])

# draw particles
for ind in range(len(p)):

    # particle
    circle = plt.Circle((p[ind][0], p[ind][1]), 1., facecolor='#ffb266', edgecolor='#994c00', alpha=0.5)
    plt.gca().add_patch(circle)

    # particle's orientation
    arrow = plt.Arrow(p[ind][0], p[ind][1], 7*cos(p[ind][2]*pi/180), 7*sin(p[ind][2]*pi/180), alpha=1., facecolor='#994c00', edgecolor='#994c00')
    plt.gca().add_patch(arrow)


# landmarks which can be sensed by the robot (in meters)
landmarks = [[-0.37 * 100, 1.68 * 100], [1.09 * 100, 1.68 * 100], [2.55 * 100, 1.68 * 100],
        [-0.37 * 100, 0.23 * 100], [1.09 * 100, 0.23 * 100], [2.55 * 100, 0.23 * 100]]

# fixed landmarks of known locations
for lm in landmarks:
    circle = plt.Circle((lm[0], lm[1]), 1., facecolor='#cc0000', edgecolor='#330000')
    plt.gca().add_patch(circle)

ax = fig.add_subplot(111)
ax.annotate('1', xy=(-37, 168), xytext=(-37, 160))
ax.annotate('2', xy=(109, 168), xytext=(109, 160))
ax.annotate('3', xy=(255, 168), xytext=(255, 173))
ax.annotate('4', xy=(-37, 23), xytext=(-37, 15))
ax.annotate('5', xy=(109, 23), xytext=(109, 15))
ax.annotate('6', xy=(255, 23), xytext=(255, 15))


plt.savefig('figure_test.png')
plt.close()
