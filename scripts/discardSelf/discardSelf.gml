creator.attack = 0
creator.attacked = 0
if(!creator.ai)
{
	creator.attackDamage = 0
	if(!creator.card.exhaust)	
	{
		with(obj_deck)
		{
			var array = []
			array[0] = other.creator.card.object_index
			array[1] = other.creator.card.upgrade
			ds_list_add(discard, array)
		}
		
	}
	instance_destroy(creator.card)
	with(obj_deck)
		{
			hand--
			arrangeHand()
		}
}