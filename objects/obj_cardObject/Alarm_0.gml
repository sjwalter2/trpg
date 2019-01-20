/// @description Insert description here
// You can write your code in this editor
instance_destroy()
var target = getPersonAt(positionX,positionY,global.gameLayer)
if(target != noone)
{
	applyDamage(target,creator.attackDamage)
}

discardSelf()