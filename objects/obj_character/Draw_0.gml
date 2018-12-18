/// @description Insert description here
// You can write your code in this editor
if(selected && !rangeFound && !attack)
{
	var pathBlank = []
	with(obj_tiles)
	{
		inRange = 0
		rangeOf = 0
		pathX = pathBlank
		pathY = pathBlank
	}

	
	with(instance_position(x,y,obj_tiles))
	{
		inRange = 1	
	}
	var pathX = []
	var pathY = []
	pathX[0] = positionX
	pathY[0] = positionY
	check_range(actionMax - actionCurrent,x,y,1,1, pathX, pathY)
	with(obj_tiles)
	{
		if(inRange = 1 && other.team != 0)	
		{
			var w = global.tileWidth
			var h = global.tileHeight
			var tile = 0
			for(var i = other.minRange; i <= other.attackRange; i++)	
			{
				if	(position_meeting(x + i*w, y, obj_tiles) && 
					instance_position(x + i*w, y, obj_tiles).inRange = 0)
					{
						tile = instance_position(x + i*w, y, obj_tiles)
						tile.inRange = 2
						tile.rangeOf = id
					}
				if	(position_meeting(x - i*w, y, obj_tiles)	&& 
					instance_position(x - i*w, y, obj_tiles).inRange = 0)
					{
						tile = instance_position(x - i*w, y, obj_tiles)
						tile.inRange = 2	
						tile.rangeOf = id
					}
				if	(position_meeting(x, y + i*h, obj_tiles)	&& 
					instance_position(x, y + i*h, obj_tiles).inRange = 0)
					{
						tile = instance_position(x, y + i*h, obj_tiles)
						tile.inRange = 2	
						tile.rangeOf = id
					}
				if	(position_meeting(x, y - i*h, obj_tiles)	&& 
					instance_position(x, y - i*h, obj_tiles).inRange = 0)
					{
						tile = instance_position(x, y - i*h, obj_tiles)
						tile.inRange = 2
						tile.rangeOf = id
					}
					
				if	(i > 1 && position_meeting(x + (i-1)*w, y+ (i-1)*h, obj_tiles) && 
					instance_position(x + (i-1)*w, y+ (i-1)*h, obj_tiles).inRange = 0)
					{
						tile = instance_position(x + (i-1)*w, y+ (i-1)*h, obj_tiles)
						tile.inRange = 2
						tile.rangeOf = id
					}
				if	(i > 1 && position_meeting(x - (i-1)*w, y+ (i-1)*h, obj_tiles) && 
					instance_position(x - (i-1)*w, y+ (i-1)*h, obj_tiles).inRange = 0)
					{
						tile = instance_position(x - (i-1)*w, y+ (i-1)*h, obj_tiles)
						tile.inRange = 2
						tile.rangeOf = id
					}
				if	(i > 1 && position_meeting(x + (i-1)*w, y - (i-1)*h, obj_tiles) && 
					instance_position(x + (i-1)*w, y - (i-1)*h, obj_tiles).inRange = 0)
					{
						tile = instance_position(x + (i-1)*w, y - (i-1)*h, obj_tiles)
						tile.inRange = 2
						tile.rangeOf = id
					}
				if	(i > 1 && position_meeting(x - (i-1)*w, y - (i-1)*h, obj_tiles) && 
					instance_position(x - (i-1)*w, y - (i-1)*h, obj_tiles).inRange = 0)
					{
						tile = instance_position(x - (i-1)*w, y - (i-1)*h, obj_tiles)
						tile.inRange = 2
						tile.rangeOf = id
					}
				
			}
		}
	}

	rangeFound = 1
}



draw_set_color(c_white)
if(hover = 1)
	draw_set_color(c_yellow)
else if(hover = 2)
	draw_set_color(c_black)
draw_set_alpha(.8)
if(selected || hover)
	draw_roundrect(x-sprite_width/2-2,y-sprite_height/2-2,x+sprite_width/2,y+sprite_height/2,0)
draw_set_alpha(1)

draw_self()
