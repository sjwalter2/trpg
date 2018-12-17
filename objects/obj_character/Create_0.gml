/// @description Insert description here
// You can write your code in this editor
positionX = -1
positionY = -1
baseMovement = 5
baseHealth = 5
currentHealth = 5
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
moveSpeed = 4
rangeFound = 0
attack = 0
attacked = 0
attackDamage = 2
mouseDown = 0
currentTile = 0
ai = 0
noMove = 0
alarm_set(0,1)
arrow = instance_create_depth(x,y,depth+1,obj_charArrow)
arrow.creator = id
levelLayer = 0