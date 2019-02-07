/// @description Insert description here
// You can write your code in this editor
var maxCountries = 0
with(obj_countries)
	maxCountries = countries-1

var start0 = irandom_range(2,maxCountries)

var start1 = irandom_range(2,maxCountries)
while(start1 = start0)
	start1 = irandom_range(2,maxCountries)

var start2 = irandom_range(2,maxCountries)
while(start2 = start0 || start2 = start1)
	start2 = irandom_range(2,maxCountries)

with(obj_tileMap)
	if(gridNum = start0 || gridNum = start1 || gridNum = start2)
		unlockable = 1