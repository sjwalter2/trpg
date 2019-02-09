if(finish && !triangleSet && edge)
{
	var tileU = getMapTileAt(posX,posY-1,creator)
	var tileD = getMapTileAt(posX,posY+1,creator)
	var tileL = getMapTileAt(posX-1,posY,creator)
	var tileR = getMapTileAt(posX+1,posY,creator)
	
	var tileUL = getMapTileAt(posX-1,posY-1,creator)
	var tileUR = getMapTileAt(posX+1,posY-1,creator)
	var tileDL = getMapTileAt(posX-1,posY+1,creator)
	var tileDR = getMapTileAt(posX+1,posY+1,creator)
	
	if(tileU == noone)
	{
		if(tileUL != noone)	
			TUL = 1
		if(tileUR != noone)
			TUR = 1
	}
	if(tileD == noone)
	{
		if(tileDL != noone)	
			TDL = 1
		if(tileDR != noone)
			TDR = 1
	}
	if(tileL == noone)
	{
		if(tileUL != noone)	
			TLU = 1
		if(tileDL != noone)
			TLD = 1
	}
	if(tileR == noone)
	{
		if(tileUR != noone)	
			TRU = 1
		if(tileDR != noone)
			TRD = 1
	}
	triangleSet = 1
}

if(finish && edge && triangleSet)
{
	var x0 = creator.startX  + posX*gridW
	var y0 = creator.startY + posY*gridH
	var x1 = creator.startX  + (posX+1)*gridW-1
	var y1 = creator.startY + (posY+1)*gridH-1
	if(TUR)
		draw_triangle(x0,y0,x1,y0,x1,y0-gridH,0)
	if(TUL)
		draw_triangle(x0,y0,x1,y0,x0,y0-gridH,0)
	if(TDR)
		draw_triangle(x0,y1,x1,y1,x1,y1+gridH,0)
	if(TDL)
		draw_triangle(x0,y1,x1,y1,x0,y1+gridH,0)
	if(TLU)
		draw_triangle(x0,y0,x0,y1,x0-gridW,y0,0)
	if(TLD)
		draw_triangle(x0,y0,x0,y1,x0-gridW,y1,0)
	if(TRU)
		draw_triangle(x1,y0,x1,y1,x1+gridW,y0,0)
	if(TRD)
		draw_triangle(x1,y0,x1,y1,x1+gridW,y1,0)
}

