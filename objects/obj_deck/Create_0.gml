/// @description Insert description here
// You can write your code in this editor
deck = ds_list_create()
discard = ds_list_create()
draw = 6
drawn = 0
discarded = 0
hand = 0
deckSize = 9
x = sprite_width
y = display_get_gui_height() - sprite_height


for(var i = 0; i < deckSize; i++)
{
	var card = 0
	switch irandom_range(0,3)
	{
		case 0:
			card = instance_create_depth(0,room_height+32,-30,obj_cardFireball)
		break;
		case 1:
			card = instance_create_depth(0,room_height+32,-30, obj_cardHeal)
		break;
		case 2:
			card = instance_create_depth(0,room_height+32,-30, obj_cardBagOfJunk);
		break;
		case 3:
			card = instance_create_depth(0,room_height+32,-30, obj_cardLayerDash);
		break;
	}
	var array = []
	array[0] = card.object_index
	array[1] = irandom(1)
	ds_list_add(deck,array)
	instance_destroy(card)
}

	
	

			
		
	
