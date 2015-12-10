'''
Idea:
Given flat landmass, have buildings pop up one by one
Store landmass as a matrix-0 for nothing, 1 for a building
First building pops up in a random spot
Second building pops up near the first one
The likelihood of each building popping up is based on how 
close a plot of land is to nearby buildings

Each item in the matrix starts with w = 0
w: the likelihood that a building will emerge
land: individual plot where one building can emerge
if a land pops up a building, lands closest to it 
will have high w values, and there's a gradient of decreasing
w from the building, the epicenter

Can store matrix of land as a 2D array
Have another array that stores which land has a building
Can store matrix as a graph where each node is connected to 4
neighboring land plot (North, south, east, west)
	Can generate this graph automatically in the beginning using
	nested for loop (2) that generates N, S, E, W, neighbors
'''

def build(a):
	a[2] = 3
	return a
def update(a, b):
	for i, j in enumerate(a):
		w = abs(b - i)
		print i, j
		a[i] = a[i] + w
	return a
def printLand(a, l, w):
	for i in l:
		for j in w:
			print a[i][j]


land = []
buildings = []
width = 3
length = 3
total = width * length
land = [0] * total
print land
land = build(land)
print land
land = update(land, 2)
print land
