/// @description Insert description here
// You can write your code in this editor
positionX = -1
positionY = -1
baseMovement = 5
baseHealth = 40
currentHealth = baseHealth
attackRange = 1
moveMod = 0
currentMove = 0
movingCount = 1
selected = 0
moving = 0
actionMax = 5
actionCurrent = 0
lastCost = []
team = 0
moveSpeed = 1
rangeFound = 0
attack = 0
attacked = 0
attackDamage = 0
mouseDown = 0
currentTile = 0
ai = 0
noMove = 0
aiMoved = 0
hover = 0
attackCost = 0
card = 0
alarm_set(0,1)
arrow = instance_create_depth(x,y,depth+1,obj_charArrow)
arrow.creator = id
healthBar = instance_create_depth(x,y,depth-15,obj_healthBar)
healthBar.creator = id

levelLayer = 0
minRange = 2
magic = 0
physical = 0
dexterity = 0



switch irandom_range(0,1){
	case 0:
		gender = "male";
		break;
	case 1:
		gender = "female";
		break;
}
name = generateName(gender);
