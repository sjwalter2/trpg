/// @description Insert description here
// You can write your code in this editor
//var edgeL = 0,edgeR = 0,edgeU = 0,edgeD = 0
//if(posX < width-1 && posX > 1 && posY < height-1 && posY > 1)
//{
//	if(creator.validGrid[posY -  1,posX] == gridNum && creator.validGrid[posY +  1,posX] == gridNum && creator.validGrid[posY ,posX-  1] == gridNum && creator.validGrid[posY ,posX+  1] == gridNum)
//		edge = 0
//	if(creator.validGrid[posY -  1,posX] != gridNum)
//		edgeU = 1
//	if(creator.validGrid[posY +  1,posX] != gridNum)
//		edgeD = 1
//	if(creator.validGrid[posY ,posX-  1] != gridNum)
//		edgeL = 1
//	if(creator.validGrid[posY ,posX+  1] != gridNum)
//		edgeR = 1
//}
//else 
//{
//	edge = 1
//	if(posY <= 1)
//		edgeU = 1
//	if(posY >= height-1)
//		edgeD = 1
//	if(posX <= 1)
//		edgeL = 1
//	if(posX >= width-1)
//		edgeR = 1
	
//}
//var col = make_color_hsv(hue+randHue*!edge,sat+50*edge+randSat*!edge + 20*hover,val-100*edge-colorOff*30+randVal*!edge + 40*hover)

//if(hover&& edge)
//{
//	var drawL = creator.startX + posX*gridW
//	var drawR = creator.startX  + (posX+1)*gridW-1
//	var drawU = creator.startY + posY*gridH
//	var drawD = creator.startY +(posY+1)*gridH-1
//	var offsetX = 1
//	var offsetY = 1
//	with(obj_hoverOutline)
//	{
//		draw_set_color(c_white)
//		if(edgeU)
//			draw_rectangle(drawL,drawU,drawR, drawU-offsetY,0)
//		if(edgeL)
//			draw_rectangle(drawL,drawU-1,drawL - offsetX, drawD,0)
		
//		draw_set_color(c_black)
		
//		if(edgeR)
//			draw_rectangle(drawR + offsetX,drawU,drawR, drawD,0)
			
//		if(edgeD)
//			draw_rectangle(drawL,drawD + offsetY, drawR, drawD,0)
//	}
//}