/// @description Insert description here
// You can write your code in this editor
width = 12
height = 12

tileTypes = []
tileTypes[0] = obj_grassTile
tileTypes[1] = obj_hillTile
tileTypes[2] = obj_mountainTile
tileTypes[3] = obj_waterTile
tileWeight = []
tileWeight[0] = 100;
tileWeight[1] = 15;
tileWeight[2] = 10;
tileWeight[3] = 10;
tileDepth = 0
tileWidth = 32
tileHeight = 32
offsetX = 16
offsetY = 16

global.tileWidth = tileWidth
global.tileHeight = tileHeight
global.width = width
global.height = height
playerDepth = -10

if(global.rand)
{
	global.seed = irandom(2000)
}
random_set_seed(global.seed)
	
alarm_set(0,1)