/// @description Insert description here
// You can write your code in this editor
if(capital > 0)
{
	depth = -6-capital
	hover = 0
}

if(posX < width-1 && posX > 1 && posY < height-1 && posY > 1)
{
	if(creator.validGrid[posY -  1,posX] == gridNum && creator.validGrid[posY +  1,posX] == gridNum && creator.validGrid[posY ,posX-  1] == gridNum && creator.validGrid[posY ,posX+  1] == gridNum)
		edge = 0
}
else 
{
	edge = 1

}

var col = make_color_hsv(hue+randHue*!edge,sat+50*edge+randSat*!edge + 20*hover,val-100*edge-colorOff*30+randVal*!edge + 40*hover)

if(hover && irandom(500) = 0 && sparkle = 0 && capital = 0)
	sparkle = 15

if(sparkle > 0)
{
	col = merge_color(col, c_white,sparkle/30)
	sparkle--	
}
	
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
if !edge && capital = 0 && sparkle < 1
	draw_set_alpha(.6)

draw_rectangle(creator.startX + posX*gridW+0*hover*!edge,creator.startY + posY*gridH+0*hover*!edge, creator.startX  + (posX+1)*gridW-1,creator.startY +(posY+1)*gridH-1,0)
//if(!hover || edge)
	//draw_rectangle(creator.startX  + posX*gridW+2,creator.startY +posY*gridH+2,creator.startX + (posX+1)*gridW-3,creator.startY +(posY+1)*gridH-3,0)

draw_set_alpha(1)

