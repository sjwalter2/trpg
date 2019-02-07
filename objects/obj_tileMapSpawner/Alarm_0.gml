/// @description Insert description here
// You can write your code in this editor

if(createNew)
{
	for(var i = 1; i < number; i++)
	{
		var spawner = instance_create_depth(x,y,depth,obj_tileMapSpawner)
		spawner.startX = i*room_width/number + irandom_range(-25,25)
		spawner.number = number
		spawner.createNew = 0
		spawner.colorOff = i
	}	
}

randomize()
height = 135
width = (240/number)
border = 0
expand = floor(irandom_range(10,15))
drawGrid = []
gridW = (room_width/number)/width
gridH = (room_height)/height
var iter = irandom_range(8,20)
var minimum = irandom_range(25/number,35/number)
var top = irandom_range(iter+10,iter+20)
var bot  = irandom_range(iter+10,iter+20)
var left = irandom_range(iter+10,iter+20)
var right  = irandom_range(iter+10,iter+20)

groups = floor(irandom_range(12,16)/number)
row = [];
validGrid = []
tileGrid = []
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				validGrid[i,j] = 0
				tileGrid[i,j] = noone
			}
			

var rowSize = irandom_range(minimum,2*minimum)
row[top,0] = irandom_range(width/4,width - width/4 - rowSize)
row[top,1] = row[top,0] + rowSize

	for(var j = 0; j < width; j++)
	{
		if(row[top,0] <= j && row[top,1] >= j)
			validGrid[top,j] = 1
		else
			validGrid[top,j] = 0
	}

for(var i = top+1; i < height-bot; i++)
{
	var rowL = row[i-1,0] + irandom_range(-expand,expand)
	var rowR = row[i-1,1] + irandom_range(-expand,expand)
	while(rowR - rowL > width/2)
	{
		rowR--
		rowL++
	}
	while(rowR - rowL < minimum)
	{
		rowR++
		rowL--
	}
	
	while(rowL < left)
		rowL++
	while(rowR > width-right)
		rowR--
	while(rowL >= rowR)
	{
		rowL-=2
	}
	
		
	row[i,0] = rowL
	row[i,1] = rowR
	for(var j = 0; j < width; j++)
	{
		if(rowL <= j && rowR >= j)
			validGrid[i,j] = 1
		else
			validGrid[i,j] = 0
	}
}
var iterChance0 = 6
var iterChance1 = 20
for(var k = 0; k < iter; k++)
	for(var i = 1; i < height-2; i++)
		for(var j = 1; j < width-2; j++)
			{
				if(validGrid[i,j] = 1)
				{
					var used = 0
					if(!validGrid[i-1,j] = 1 && irandom(iterChance0) = 0)
					{
						validGrid[i-1,j] = 1
						used = 1
					}
					if(!validGrid[i+1,j] = 1 && irandom(iterChance0) = 0)
					{
						validGrid[i+1,j] = 1
						used = 1
					}
					if(!validGrid[i,j-1] = 1 && irandom(iterChance0) = 0)
					{
						validGrid[i,j-1] = 1
						used = 1
					}
					if(!validGrid[i,j+1] = 1 && irandom(iterChance0) = 0)
					{
						validGrid[i,j+1] = 1
						used = 1
					}
				}	
			}
			
if(number = 2)
{
var l = height, r = 0;
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				if validGrid[i,j] = 1
				{
					if(j < l)
						l = j
					if(j > r)
						r = j
				}
			}
			
	if(colorOff = 0)
		while(room_width/2 - (startX + r*gridW) > minimum)
			startX++
	if(colorOff = 1)
		while((startX + l*gridW) - room_width/2 > minimum)
			startX--
}
if(number = 1)
{
var l = height, r = 0;
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				if validGrid[i,j] = 1
				{
					if(j < l)
						l = j
					if(j > r)
						r = j
				}
			}

	while((startX + (floor((r+l)/2))*gridW) + minimum < room_width/2)
		startX++
	while((startX + (floor((r+l)/2))*gridW) - minimum > room_width/2)
		startX--

}


var colors = ds_list_create()
var colorCount = 0


for(var i = 0; i < groups*2; i++)
	 ds_list_add(colors, i*floor(255/(groups*2)))
	 
ds_list_shuffle(colors)

var checkArea = 12
for(var i = 2; i < groups+2; i++)
{
	var validStart = 0
	var startCount = 0
	var skip = 0
	while(validStart = 0)
	{
		var xx = irandom_range(checkArea, width-checkArea)
		var yy = irandom_range(checkArea, height-checkArea)	
		startCount++
		if(startCount > 50)
		{
			skip = 1
			break;
		}
		validStart = 1
			for(var k = -checkArea; k < checkArea; k++)
				for(var l = -checkArea; l < checkArea; l++)
					if(validGrid[yy+k,xx+l] > 1 || validGrid[yy+floor(k/4),xx+floor(l/4)] = 0)
						validStart = 0
	}
	if(!skip)
	{
		var tile = instance_create_depth(border+xx*gridW,border+yy*gridH,-1,obj_tileMap)
		tile.posX = xx
		tile.posY = yy
		tile.height = height
		tile.width = width
		tile.border = border
		tile.gridW = gridW
		tile.gridH = gridH
		tile.creator = id;
		tile.hue = ds_list_find_value(colors,i-2)
		with(obj_countries)
		{
			tile.gridNum = countries
			countriesFinished[countries] = 0
			countriesUnlocked[countries] = 0
			countries++
		}
		tile.capital = 3
		tile.colorOff = 0
		with(obj_capitals)
		{
			tile.capitalGroup = capitalCreated
			capitalFinished[capitalCreated] = 0
			capitalCreated++
		}
		validGrid[yy,xx] = tile.gridNum
		tileGrid[yy,xx] = tile.id
		
	}
}
alarm_set(1,40)
drawGrid = validGrid