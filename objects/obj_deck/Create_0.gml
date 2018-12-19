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
	if(irandom(1))
		ds_list_add(deck, obj_cardFireball)
	else
		ds_list_add(deck, obj_cardHeal)
}
