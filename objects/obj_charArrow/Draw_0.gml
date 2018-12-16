/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.6)
if(count >= 1 && creator.team = global.turn && creator.team = 0)
{
	draw_set_color(c_white)
	var arrowWidth = 6
	var offsetX = 0
	var offsetY = 0
	for(var i = minArrow; i <= count; i++)
	{
		switch(point_direction(global.tileWidth/2 + pathX[i-1]*global.tileWidth, global.tileHeight/2 + pathY[i-1]*global.tileHeight, global.tileWidth/2 + pathX[i]*global.tileWidth, global.tileHeight/2 + pathY[i]*global.tileHeight))
			{
				case 0:
					offsetX = -1
					offsetY = 0
				break;
				case 90:
					offsetX = 0
					offsetY = 1
				break;
				case 180:
					offsetX = 1
					offsetY = 0
				break;
				case 270:
					offsetX = 0
					offsetY = -1
				break;
			}
		if(i = minArrow)
			draw_line_width(creator.x, creator.y, global.tileWidth/2 + pathX[i]*global.tileWidth - offsetX*arrowWidth/2, global.tileHeight/2 + pathY[i]*global.tileHeight - offsetY*arrowWidth/2, arrowWidth)
		else
			draw_line_width(global.tileWidth/2 + pathX[i-1]*global.tileWidth - offsetX*arrowWidth/2, global.tileHeight/2 + pathY[i-1]*global.tileHeight - offsetY*arrowWidth/2, global.tileWidth/2 + pathX[i]*global.tileWidth - offsetX*arrowWidth/2, global.tileHeight/2 + pathY[i]*global.tileHeight - offsetY*arrowWidth/2, arrowWidth)
			
		if(i = count)
		{
			var xx = global.tileWidth/2 + pathX[i]*global.tileWidth
			var yy = global.tileHeight/2 + pathY[i]*global.tileHeight
			var hh = 5
			switch(point_direction(global.tileWidth/2 + pathX[i-1]*global.tileWidth, global.tileHeight/2 + pathY[i-1]*global.tileHeight, global.tileWidth/2 + pathX[i]*global.tileWidth, global.tileHeight/2 + pathY[i]*global.tileHeight))
			{
				case 0:
					draw_triangle(xx - offsetX*arrowWidth/2,yy - hh, xx - offsetX*arrowWidth/2, yy+hh, xx+hh - offsetX*arrowWidth/2,yy,0)
				break;
				case 90:
					draw_triangle(xx-hh,yy - offsetY*arrowWidth/2, xx+hh, yy - offsetY*arrowWidth/2, xx,yy-hh - offsetY*arrowWidth/2,0)
				break;
				case 180:
					draw_triangle(xx - offsetX*arrowWidth/2,yy - hh, xx - offsetX*arrowWidth/2, yy+hh, xx-hh - offsetX*arrowWidth/2,yy,0)
				break;
				case 270:
					draw_triangle(xx-hh,yy - offsetY*arrowWidth/2, xx+hh, yy - offsetY*arrowWidth/2, xx,yy+hh - offsetY*arrowWidth/2,0)
				break;
			}
		}
	}
	
	
}
draw_set_alpha(1)


