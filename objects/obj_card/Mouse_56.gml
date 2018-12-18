/// @description Insert description here
// You can write your code in this editor
if(selected)
{
selected = 0
x = xstart
y = ystart
xSize = 1
ySize = 1

	if(touching != -1)
	{
		if(touching.actionCurrent + cost <= touching.actionMax)
		{
			touching.actionCurrent += cost
			touching.currentMove = touching.actionCurrent
			touching.hover = 0
			touching.selected = 1
			touching.rangeFound = 0
			touching.attackCost = cost
			touching.card = id
			var pathBlank = []
			with(obj_tiles)
			{
				inRange = 0
				rangeOf = 0
				pathX = pathBlank
				pathY = pathBlank
			}
			if(attack)
			{
				with(touching)
				{

					var pathX = []
					var pathY = []
					pathX[0] = positionX
					pathY[0] = positionY
					check_range(other.maxRange-1,x,y,2,other.useTerrain,pathX,pathY)
					check_range(other.minRange-1,x,y,0,other.useTerrain,pathX,pathY)
					attack = 1
					attackDamage = other.damage
				}
			}
			if(block)
			{
				with(touching)
				{

					var pathX = []
					var pathY = []
					pathX[0] = positionX
					pathY[0] = positionY
					check_range(other.maxRange-1,x,y,3,other.useTerrain,pathX,pathY)
					check_range(other.minRange-1,x,y,0,other.useTerrain,pathX,pathY)
					attack = 1
					attackDamage = other.damage
				}
			}
			touching = -1
		}
		else
		{
			var pathBlank = []
			with(obj_tiles)
			{
				inRange = 0
				rangeOf = 0
				pathX = pathBlank
				pathY = pathBlank
			}
			touching.hover= 0
		}
		selected = 0
	}
}