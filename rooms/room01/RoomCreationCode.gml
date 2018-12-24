global.rand = 1
room_goto_next()
randomize()

global.tileWidth = 32
global.tileHeight = 32
global.width = 12
global.height = 8
var roomWidth = global.width*global.tileWidth + 200
var roomHeight = global.height*global.tileHeight + 200
if(roomWidth < 668)
	roomWidth = 668
if(roomHeight < 432)
	roomHeight = 432

global.offsetX = global.tileWidth/2  + roomWidth/2 - (global.tileWidth*global.width)/2
global.offsetY = global.tileHeight/2 + roomHeight/2 - (global.tileHeight*global.height)/2




room_set_height(room0,roomHeight)
room_set_width(room0,roomWidth)