/// @description Insert description here
// You can write your code in this editor
var currentAttack = 0
with(obj_character)
	if(attack)
		currentAttack = 1

if(!currentAttack && global.turn = 0)
{
selected = 0
arrow.count = 0
arrow.minArrow = 1
currentMove = actionCurrent
rangeFound = 0
var pathBlank = []
with(obj_tiles)
{
	inRange = 0
	rangeOf = 0
	pathX = pathBlank
	pathY = pathBlank
}
if(attack)
{
	attack = 0
	actionCurrent -= attackCost
	attackCost = 0
	card.active = 0
	card = 0
}
}