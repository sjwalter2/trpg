/// @description Insert description here
// You can write your code in this editor
deck = ds_list_create()
discard = ds_list_create()
draw = 6
drawn = 0
discarded = 0
hand = 0
for(var i = 0; i < 9; i++)
{
	switch irandom_range(0,2){
	case 0:
		ds_list_add(deck, obj_cardFireball)
		break;
	case 1:
		ds_list_add(deck, obj_cardHeal)
		break;
	case 2:
		ds_list_add(deck, obj_cardBagOfJunk);
		break;
	}
}
