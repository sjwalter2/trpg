/// @description Insert description here
// You can write your code in this editor




var movingIsOk = true;

if getPersonAt(positionX,positionY,!creator.levelLayer) != noone{  //For some reason, this only triggers if the other person is on my same layer
	movingIsOk = false;
}

if movingIsOk{
	var target;
	target = getPersonAt(positionX + abs(positionX - creator.positionX),positionY + abs(positionY - creator.positionY),!creator.levelLayer);
	//TODO: check if target is on my layer. maybe update getPersonAt script?
	if target != noone{
		//TODO: Damage target
	}
	
	
	//TODO: We should "method"-ize moving someone. Maybe move the path and/or move code into a method.
	creator.x = x;
	creator.positionX = positionX;
	creator.y = y;
	creator.positionY = positionY;
	creator.levelLayer = !creator.levelLayer	
	
	swapLayer();
}
instance_destroy()

discardSelf();