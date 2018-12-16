/// @description Insert description here
// You can write your code in this editor
if(selected)
{
selected = 0
x = xstart
y = ystart
image_xscale = 1
image_yscale = 1

	if(touching != -1)
	{
		if(touching.actionCurrent + cost <= touching.actionMax)
		{
			touching.actionCurrent += cost
			touching.currentMove = touching.actionCurrent
		
			touching.selected = 1
			touching.rangeFound = 0
	
			with(obj_tiles)
			{
				inRange = 0
				checkAmount = 0
			}
			if(attack)
			{
				with(touching)
				{

					var pathX = []
					var pathY = []
					pathX[0] = positionX
					pathY[0] = positionY
					check_range(other.maxRange,x,y,2,other.useTerrain,pathX,pathY)
					check_range(other.minRange,x,y,0,other.useTerrain,pathX,pathY)
					attack = 1
					attackDamage = 1
				}
			}
			touching = -1
		}
		selected = 0
	}
}