/// @description Insert description here
// You can write your code in this editor
var attacking = 0
with(obj_character)
	if(attack)
		attacking = 1
if(!attacking)
{
with(all)
	selected = 0


selected = 1

with(obj_character)
	if(attack || moving)
		other.selected = 0
}