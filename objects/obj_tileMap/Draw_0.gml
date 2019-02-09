/// @description Insert description here
// You can write your code in this editor

if(capital > 0 && depth != -6-capital)
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

if(edge && depth !=  -3)
	depth = -3

var relock = 0
if(unlockableHover)
{
	relock = 1
	unlocked = 1	
}
var col = make_color_hsv(hue+randHue*!edge,unlocked*(sat+50*edge+randSat*!edge + 20*hover) + !unlocked*70,(val-50*edge+randVal*!edge + 40*hover)*unlocked + unlockVal*!unlocked +!unlocked*edge*-20)

var odds =1500
if(creator.zoom != 0)
	odds = 15000
if(finish && sparkle = 0 && irandom(odds)= 0 && unlocked && capital = 0&& edge = 0)
{
	sparkle = 20
	alarm_set(3,1)	
}
	
	

if(capital > 1)
{
	col = merge_color(col, c_white,.9*unlocked + .1*!unlocked)
}
else if(capital > 0)
{
	col = merge_color(col, c_black,.5)

}


if(capital)
	draw_set_alpha(.2 + .2*capital)
else
	draw_set_alpha(.75)

if(sparkle > 0)
{
	col = merge_color(col, c_white,sparkle/30)
	sparkle--	
}
if(edge && unlockable &&  fadeIn >0)
{
	
	col = merge_color(col, c_white,.025*fadeIn)
	
}
if(unlockable)
{
	fadeIn += fadeDir
	if(fadeIn > 30 || fadeIn < -5)
	{
		fadeDir*=-1
	}	
	
}
	
draw_set_color(col)

var currentAlpha = draw_get_alpha()


draw_rectangle(creator.startX  + posX*gridW,creator.startY + posY*gridH, creator.startX  + (posX+1)*gridW-1,creator.startY +(posY+1)*gridH-1,0)

	
draw_set_alpha(currentAlpha)

if(capitalHover)
{
	draw_set_color(c_white)
	draw_rectangle(creator.startX  + posX*gridW,creator.startY + posY*gridH, creator.startX  + (posX+1)*gridW-1,creator.startY +(posY+1)*gridH-1,0)
}
	draw_set_color(col)
if(unlocked && edge)
	draw_set_color(merge_color(col, c_white,.4))
	
if(capital > 0 || edge)
	draw_roundrect(creator.startX - 1 + 1*edge + posX*gridW,creator.startY - 1 + 1*edge + posY*gridH, creator.startX  + (posX+1)*gridW-1-1*edge,creator.startY +(posY+1)*gridH-1-1*edge,0)
draw_set_alpha(1)

var skip = 0
if(capital > 1 && drawFlag = 0 && finish && unlocked)
{
	with(obj_tileMap)
		if(capital > other.capital && capitalGroup == other.capitalGroup && creator = other.creator)
			skip = 1
			
	if(!skip)
		drawFlag = 1
	else
		drawFlag = 2
}

var capFinished = 0
if(drawFlag = 1)
{
	with(obj_capitals)
		if(capitalFinished[other.capitalGroup])
			capFinished = 1
			
		if(creator.zoom = 0 && capFinished)
			draw_sprite_ext(spr_flag,0,creator.startX  + posX*gridW + gridW*.5,creator.startY + posY*gridH ,1 ,1,0,c_white,1)
		else if(capFinished)
			draw_sprite_ext(spr_flag,0,creator.startX  + posX*gridW + gridW*.5,creator.startY + posY*gridH ,2 ,2,0,c_white,1)
			
}
if(relock)
	unlocked = 0