creator.attack = 0
creator.attacked = 0
if(!creator.ai)
{
	creator.attackDamage = 0
	if(!creator.card.exhaust)	
	{
		with(obj_deck)
		{
			ds_list_add(discard, other.creator.card.object_index)
			hand--
			instance_destroy(other.creator.card)
			arrangeHand()
		}
		
	}
	
}