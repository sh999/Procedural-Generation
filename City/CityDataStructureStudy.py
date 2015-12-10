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
import random
def build(land, weight):
	# Build a building on one land plot
	# Input:
	# Land = Array of land to be modified
	# Weight = Array of weights, the likelihood a building can be built
	
	for i, j in enumerate(weight):
		if weight[i] != None:
			build = random.random()
			if build < j:
				land[i] = 1
				print "Building on", i
				print "updating.."
				weight = update(weight, i)
				print "new weight = ", weight
				print "new land = ", land
	return land

def update(weight, buildingIndex):
	# Factor for distance-weight
	# Increase to make building more rare
	factor = 3
	for i, j in enumerate(weight):
		# Check all items, determine distance, set weight based on it
		print i, j
		if(i != buildingIndex):
			# Set probabilities based on distance
			w = (1-(float(abs(buildingIndex - i))/10))/factor
			# print i, j
			weight[i] = weight[i] + w
		else:
			# If building exists, set weight to nil
			weight[i] = 0
	return weight

def printLand(a, l, w):
	for i in l:
		for j in w:
			print a[i][j]


land = []
buildings = []
width = 10
length = 2
total = width * length
land = [0] * total
weight = [0.1] * total
print "Initial land = ", land
print "Initial weight ", weight
land = build(land, weight)
print "After build 1 = ", land


