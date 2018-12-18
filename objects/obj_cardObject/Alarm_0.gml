/// @description Insert description here
// You can write your code in this editor
instance_destroy()

if(position_meeting(x,y,obj_character))
{
	var target = instance_position(x,y,obj_character)
	target.currentHealth -= creator.attackDamage
}
creator.attack = 0
creator.attacked = 0
creator.attackDamage = 0
