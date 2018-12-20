//drawCards(amount)
var amount = argument0

for(var i = 0; i < amount; i++)	
	{
		var size = ds_list_size(deck) 
		if(size <= 0 && ds_list_size(discard) <= 0)
			break;
		else if(size <= 0)
		{
			ds_list_clear(deck)
			ds_list_copy(deck,discard)
			ds_list_shuffle(deck)
			ds_list_clear(discard)
		}
		size= ds_list_size(deck) 
		var card = ds_list_find_value(deck,size-1)
		if(card = undefined)
			break;
		instance_create_depth(i*room_width/amount,room_height+32,-30,card)
		hand++
		ds_list_delete(deck,size-1)	
		
	}
	