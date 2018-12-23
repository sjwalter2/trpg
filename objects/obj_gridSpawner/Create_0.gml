/// @description Insert description here
// You can write your code in this editor
width = global.width
height = global.height

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
tileWidth = global.tileWidth
tileHeight = global.tileHeight
offsetX = global.offsetX 
offsetY = global.offsetY


playerDepth = -10

if(global.rand)
{
	global.seed = irandom(2000)
}
random_set_seed(global.seed)
	
alarm_set(0,1)