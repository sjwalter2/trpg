/// @description Insert description here
// You can write your code in this editor




var movingIsOk = true;

if getPersonAt(positionX,positionY,!creator.levelLayer) != noone{
	movingIsOk = false;
}

if movingIsOk{
	var target;
	target = getPersonAt(positionX + abs(positionX - creator.positionX),positionY + abs(positionY - creator.positionY),!creator.levelLayer);
	if target != noone{
		applyDamage(target,creator.attackDamage)
	}
	
	
	//TODO: We should "method"-ize moving someone. Maybe move the path and/or move code into a method.
	creator.x = x;
	creator.positionX = positionX;
	creator.y = y;
	creator.positionY = positionY;
	creator.levelLayer = !creator.levelLayer	
	
	swapLayer();
	discardSelf();
} else {

 //TODO: duplicate the logic of discarding a card
}

instance_destroy()
