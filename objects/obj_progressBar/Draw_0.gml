/// @description Insert description here
// You can write your code in this editor
if(alarm_get(0) = -1)
	draw_set_alpha(.5)
else
	draw_set_alpha(.5*(alarm_get(0)/20))

if(delay <= 0)
{
var percentComplete = 0
var totalSpaces = 0
var spacesFilled = 0
var finish = 1
with(obj_tileMapSpawner)
{
	if(!finished)
		finish = 0
	for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				if drawGrid[i,j] = 1
					totalSpaces++
			}
	
}
with(obj_tileMap)
{
	if(capital != 3)
		spacesFilled++	
}

percentComplete = spacesFilled/totalSpaces
if(percentComplete > 1)
	percentComplete = 1
draw_set_color(c_ltgray)
//draw_roundrect_ext(x-2,y-2,x+width+1, y+height+1,2,2,1)
if(!finish)
{
	draw_set_color(c_red)
	draw_rectangle(x+floor(width*percentComplete),y,x+width,y+height,0)
}
else if(alarm_get(0) = -1)
{
	alarm_set(0,20)	
}

draw_set_color(make_color_rgb(0,255,255))
draw_rectangle(x,y,x+floor(width*percentComplete),y+height,0)

}
else
	delay--
	
	