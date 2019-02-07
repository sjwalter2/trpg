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
		var col0 = make_color_hsv(randHue,195,195)
		var col1 = make_color_hsv(randHue1,195,195)

		if(gridWaveX[i,j])
		{
			gridX[i+1,j] += .01
			gridX[i,j] -= .01
			if(i = width+2)
				gridX[0,j] -= .01
		}
		if(gridWaveY[i,j])
		{
			gridY[i,j+1] += .01
			gridY[i,j] -= .01
			if(i = height+2)
				gridY[i,0] -= .01
		}
		
		draw_set_color(col0)	
		draw_set_alpha(.1)
		draw_roundrect_ext(gridX[i, j],gridY[i, j],gridX[i+1, j+1],gridY[i+1, j+1],60,60,0)
		draw_set_alpha(.02)
		for(var k = 0; k < 1; k+=.1)
		{
		draw_roundrect_ext(gridX[i, j]+k,gridY[i, j]+k,gridX[i+1, j+1]-k,gridY[i+1, j+1]-k,60,60,1)
		}
		draw_set_color(col1)
		draw_set_alpha(.1)
		draw_roundrect_ext(gridX[i, j] - gridW/2,gridY[i, j]- gridH/2,gridX[i+1, j+1]- gridW/2,gridY[i+1, j+1]- gridH/2,60,60,0)
		draw_set_alpha(.02)
		for(var k = 0; k < 1; k+=.1)
		{
		draw_roundrect_ext(gridX[i, j] - gridW/2+ k,gridY[i, j]- gridH/2+ k,gridX[i+1, j+1]- gridW/2- k,gridY[i+1, j+1]- gridH/2 - k,60,60,1)
		}	
	}
	
}
	
draw_set_alpha(1)