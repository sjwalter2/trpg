/// @description Insert description here
// You can write your code in this editor


var target;
target = getPersonAt(positionX + abs(positionX - creator.positionX),positionY + abs(positionY - creator.positionY));

//TODO: check if target is on my layer. maybe update getPersonAt script?
if target != noone{
	//TODO: damage target
}

//TODO: move creator

instance_destroy()

discardSelf();