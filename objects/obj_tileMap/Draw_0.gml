/// @description Insert description here
// You can write your code in this editor
if(capital > 0)
	depth = -6-capital
if(posX != width && posX != 0 && posY != height && posY != 0)
{
	if(creator.validGrid[posY -  1,posX] == gridNum && creator.validGrid[posY +  1,posX] == gridNum && creator.validGrid[posY ,posX-  1] == gridNum && creator.validGrid[posY ,posX+  1] == gridNum)
		edge = 0
}
var col = make_color_hsv(hue,sat+50*edge,val-30*edge-colorOff*30)
draw_set_color(col)
if(capital > 1)
{
	draw_set_color(merge_color(col, c_white,.7))	
	alarm_set(1,30)
}
else if(capital > 0)
{
	draw_set_color(merge_color(col, c_black,.5))
	alarm_set(2,30)
}

draw_rectangle(creator.startX + border + posX*gridW,border+posY*gridH,creator.startX + border + (posX+1)*gridW-1,border+(posY+1)*gridH-1,0)

