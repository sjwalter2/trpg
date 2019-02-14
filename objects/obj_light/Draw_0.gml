/// @description Insert description here
// You can write your code in this editor
if(creator != noone &&  (creator.unlocked || creator.unlockable || creator.unlockableHover))
{
	var xx = 0
	var yy = 0
	var large = 0
	with(creator)
	{
		xx = creator.startX  + posX*gridW + gridW/4
		yy = creator.startY + posY*gridH + gridH/4	
		if(creator.zoom = gridNum)
			large = 1

	}
	x = xx
	y = yy
	if(large)
		size = 2*startSize
	else
		size = startSize
		
		
	var capFinished = 0
	with(obj_capitals)
		if(capitalFinished[other.creator.capitalGroup])
			capFinished = 1
	
	if(!capFinished)
	{
		draw_set_alpha(1.5/size)
		draw_set_color(c_white)
		for(var i = 1; i < size; i+=1)
			draw_circle(x+large,y+large,i,0)		
	}
}
