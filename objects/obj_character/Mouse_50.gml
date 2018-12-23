/// @description Insert description here
// You can write your code in this editor
var currentAttack = 0
with(obj_character)
	if(attack)
		currentAttack = 1
		
if(!currentAttack && selected && !moving && team = 0 && global.turn = team && !attack)
{
	if(position_meeting(mouse_x,mouse_y,obj_tiles))
		{
			with(arrow)
			{
				var tile = instance_position(mouse_x,mouse_y,obj_tiles)
				if	(abs(tile.positionX - pathX[count]) = 1 xor 
					abs(tile.positionY - pathY[count]) = 1 && 
					(abs(tile.positionX - pathX[count]) = 0 xor 
					abs(tile.positionY - pathY[count]) = 0 ))
					{
						if	(other.currentMove < other.actionMax - other.actionCurrent && 
							(count = 0 || 
							(tile.positionX != pathX[count - 1] || 
							tile.positionY != pathY[count - 1])) && 
							(other.actionMax - other.currentMove ) >= tile.moveCost &&
							!tile.impassable)
							{
								count++
								pathX[count] = tile.positionX
								pathY[count] = tile.positionY
								other.currentMove += tile.moveCost
								other.lastCost[count] = tile.moveCost
								
							}
						else if (count >= 1 && tile.positionX = pathX[count - 1] &&
							tile.positionY = pathY[count - 1])
							{
								
								tile =  instance_position(global.offsetX + pathX[count]*global.tileWidth, global.offsetY + pathY[count]*global.tileHeight,obj_tiles)
								other.currentMove -= tile.moveCost
								count--
							}
					}
			}
		}
}