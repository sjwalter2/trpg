/// @description Insert description here
// You can write your code in this editor
var unlock = irandom_range(2,groups)
var left = room_width
var right = 0
var up = room_height
var down = 0
	with(obj_tileMap)
	{
		if(gridNum = unlock && creator = other.id)
		{
			unlocked = 1
			sparkle = 30
			if(posX < left)
				left = posX
			if(posX > right)
				right = posX
			if(posY < up)
				up = posY
			if(posY > down)
				down = posY
		}
		else
			unlocked = 0
	}
	
//with(instance_create_depth(startX+gridW*(left+right)/2, startY+gridH*(up+down)/2,15,obj_lightTile))
//	{
//		if(right - left > up - down)	
//			size = ((right-left)*other.gridW)/2
//		else
//			size = ((up - down)*other.gridH)/2
			
//		l = left
//		r = right
//		u = up
//		d = down
//		gridNum = unlock
//		creator = other
//	}