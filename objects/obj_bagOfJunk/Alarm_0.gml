/// @description Insert description here
// You can write your code in this editor
instance_destroy()
var i;
for (i = 0; i < floor(creator.magic/2); i+=1){
	var cardSelect = irandom_range(0,6)
	if cardSelect < 3 {
		instance_create_depth(0,room_height+32,-30,obj_cardJunkRagDry)
	} else if cardSelect < 6 {
		instance_create_depth(0,room_height+32,-30,obj_cardJunkRagWet)
	} else {
		instance_create_depth(0,room_height+32,-30,obj_cardJunkMetalRubble)
	}
	with obj_deck {
		hand++
		arrangeHand();
	}
	
}
discardSelf();
