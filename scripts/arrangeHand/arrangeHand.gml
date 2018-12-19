var count = 0
with(obj_card)
	{
		if(other.hand mod 2 = 0)
		{
			if(count mod 2 = 0)
				xStart = room_width/2 + ((count)/2)*sprite_width + sprite_width*.5
			else
				xStart = room_width/2 - ((count + 1)/2)*sprite_width + sprite_width*.5
		}
		else
		{
			if(count mod 2 = 0)
				xStart = room_width/2 + (count/2)*sprite_width
			else
				xStart = room_width/2 - ((count + 1)/2)*sprite_width
		}
		count++
		x = xStart
		y = yStart
	}