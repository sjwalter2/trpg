	var count = 0
with(obj_card)	
	if(!active && !selected)
		count++

var current = 0
with(obj_card)
	{
		if(!active && !selected)
		{
		xStart = display_get_gui_width()/2 - ((count)/2)*sprite_width + sprite_width*current
		current++
		x = xStart
		y = yStart
		}
	}