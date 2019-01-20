/// @description Insert description here
// You can write your code in this editor


with(obj_character)
{
	if(global.turn = team && attack && other.inRange >= 2 && !attacked)
	{
		var target = getPersonAt(other.positionX,other.positionY,global.gameLayer);
		if((target == noone && card.hitGround) ||
		(target != noone && 
		((target.team != team && card.hitEnemies) || 
		(target.team = team && card.hitAllies))))
		{
			var ability = instance_create_depth(other.x,other.y,-30,card.object)
			ability.creator = id
			selected = 1
			rangeFound = 0
			attacked = 1
		}
	}	
}

