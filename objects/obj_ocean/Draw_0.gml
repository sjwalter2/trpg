/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white)
draw_set_alpha(.1)
var lw = 4
for(var i = 0; i < width+3; i++)
{
	for(var j = 0; j < height+3; j++)
	{
		//draw_line_width(gridX[i, j],gridY[i, j],gridX[i+1, j],gridY[i+1, j],lw)
		//draw_line_width(gridX[i, j],gridY[i, j],gridX[i, j+1],gridY[i, j+1],lw)
		draw_set_color(make_color_hsv(130,255,255))		
		draw_roundrect_ext(gridX[i, j],gridY[i, j],gridX[i+1, j+1],gridY[i+1, j+1],60,60,0)
		draw_set_color(make_color_hsv(160,255,255))		
		draw_roundrect_ext(gridX[i, j] - gridW/2,gridY[i, j]- gridH/2,gridX[i+1, j+1]- gridW/2,gridY[i+1, j+1]- gridH/2,60,60,0)

		if(gridWaveX[i,j])
		{
			gridX[i+1,j] += random(.05)
			gridX[i,j] -= random(.05)
		}
		if(gridWaveY[i,j])
		{
			gridY[i,j+1] += random(.05)
			gridY[i,j] -= random(.05)
		}
			
	}
	
}
	
draw_set_alpha(1)