/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)
for(var i = 0; i < height; i++)
		for(var j = 0; j < width; j++)
			{
				if validGrid[i,j] = 1
					draw_rectangle(startX + border + j*gridW,border+i*gridH,startX + border + (j+1)*gridW-1,border+(i+1)*gridH-1,0)
			}

