/// @description Insert description here
// You can write your code in this editor
if(global.turn = 0 && !drawn)
{
	drawn = 1
	discarded = 0
	drawCards(draw)
	arrangeHand()
}
if(global.turn != 0 && !discarded)
{
	drawn = 0
	discarded = 1
	with(obj_card)
	{
		var array = []
		array[0] = object_index
		array[1] = upgrade
		ds_list_add(other.discard,array)
		instance_destroy()
	}
	
}