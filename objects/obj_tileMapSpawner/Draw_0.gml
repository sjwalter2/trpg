/// @description Insert description here
// You can write your code in this editor
if(alarm_get(0) = -1)
{
draw_set_color(c_black)
if(zoom = 0 && finished)
{
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				//if drawGrid[i,j] = 1
					//draw_rectangle(startX  + j*gridW,startY + i*gridH,startX  + (j+1)*gridW-1,startY + (i+1)*gridH-1,0)
			}

}
else if(finished)
{
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				//if validGrid[i,j] = zoom
					//draw_rectangle(startX  + j*gridW,startY + i*gridH,startX  + (j+1)*gridW-1,startY + (i+1)*gridH-1,0)
			}	
}
}
