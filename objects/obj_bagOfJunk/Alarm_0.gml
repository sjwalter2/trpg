/// @description Insert description here
// You can write your code in this editor
instance_destroy()
var i;
for (i = 0; i < floor(creator.magic/2); i+=1){
	if irandom(1) == 1 {
		instance_create_depth(0,room_height+32,-30,obj_cardJunkRagDry)
	} else {
		instance_create_depth(0,room_height+32,-30,obj_cardJunkRagWet)		
	}
	with obj_deck {
		hand++
		arrangeHand();
	}
	
}
discardSelf();