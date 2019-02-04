/// @description Insert description here
// You can write your code in this editor
height = 10
width = 12
depth = 10
gridH = (room_height+ 2*height)/height 
gridW = (room_width+ 2*width)/width 

gridX = []
gridY = []

gridWaveX = []
gridWaveY = []


for(var i = 0; i < width+4; i++)
	for(var j = 0; j < height+4; j++)
	{
		gridX[i, j] = irandom_range(i*gridW + gridW/8,(i+1)*gridW - gridW/8) - 2*width
		gridY[i, j] = irandom_range(j*gridH + gridH/8,(j+1)*gridH - gridH/8) - 2*height
		gridWaveX[i,j] = 0
		gridWaveY[i,j] = 0
	}
	

alarm_set(0,50)	
alarm_set(1,1)
