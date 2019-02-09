/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.8)
if(instance_exists(creator) && count >= 1 && creator.team = global.turn && creator.team = 0)
{
	draw_set_color(c_white)
	var arrowWidth = 6
	var mult = 4
	var offsetX = 0
	var offsetY = 0
	for(var i = minArrow; i <= count; i++)
	{
		switch(point_direction(global.offsetX + pathX[i-1]*global.tileWidth, global.offsetY + pathY[i-1]*global.tileHeight, global.offsetX + pathX[i]*global.tileWidth, global.offsetY + pathY[i]*global.tileHeight))
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
		if(i = minArrow && i != count)
			draw_line_width(creator.x, creator.y, global.offsetX  + pathX[i]*global.tileWidth - offsetX*arrowWidth/2, global.offsetY + pathY[i]*global.tileHeight - offsetY*arrowWidth/2, arrowWidth)
		else if( i != count)
			draw_line_width(global.offsetX  + pathX[i-1]*global.tileWidth - offsetX*arrowWidth/2, global.offsetY + pathY[i-1]*global.tileHeight - offsetY*arrowWidth/2, global.offsetX  + pathX[i]*global.tileWidth - offsetX*arrowWidth/2, global.offsetY  + pathY[i]*global.tileHeight - offsetY*arrowWidth/2, arrowWidth)
			
		if(i = count)
		{
			var xx = global.offsetX  + pathX[i]*global.tileWidth
			var yy = global.offsetY + pathY[i]*global.tileHeight
			var hh = arrowWidth
			
			if(i = minArrow)
				draw_line_width(creator.x, creator.y, global.offsetX  + pathX[i]*global.tileWidth + mult*(offsetX*arrowWidth/2), global.offsetY + pathY[i]*global.tileHeight+ mult*(offsetY*arrowWidth/2), arrowWidth)
			else 
				draw_line_width(global.offsetX  + pathX[i-1]*global.tileWidth - offsetX*arrowWidth/2, 
				global.offsetY + pathY[i-1]*global.tileHeight - offsetY*arrowWidth/2, 
				global.offsetX  + pathX[i]*global.tileWidth + mult*(offsetX*arrowWidth/2), 
				global.offsetY  + pathY[i]*global.tileHeight + mult*(offsetY*arrowWidth/2), arrowWidth)
				
			switch(point_direction(global.offsetX  + pathX[i-1]*global.tileWidth, global.offsetY + pathY[i-1]*global.tileHeight, global.offsetX  + pathX[i]*global.tileWidth, global.offsetY + pathY[i]*global.tileHeight))
			{
				case 0:
					draw_triangle(xx + mult*(offsetX*arrowWidth/2),yy - hh, xx +mult*(offsetX*arrowWidth/2), yy+hh, xx+hh + mult*(offsetX*arrowWidth/2),yy,0)
				break;
				case 90:
					draw_triangle(xx-hh,yy + mult*(offsetY*arrowWidth/2), xx+hh, yy + mult*(offsetY*arrowWidth/2), xx,yy-hh + mult*(offsetY*arrowWidth/2),0)
				break;
				case 180:
					draw_triangle(xx + mult*(offsetX*arrowWidth/2),yy - hh, xx + mult*(offsetX*arrowWidth/2), yy+hh, xx-hh + mult*(offsetX*arrowWidth/2),yy,0)
				break;
				case 270:
					draw_triangle(xx-hh,yy + mult*(offsetY*arrowWidth/2), xx+hh, yy + mult*(offsetY*arrowWidth/2), xx,yy+hh + mult*(offsetY*arrowWidth/2),0)
				break;
			}
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(font0)
			draw_text(xx, yy+string_height(string(cost))/10, string(cost))
		}
	}
	
	
}
draw_set_alpha(1)


