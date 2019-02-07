/// @description Insert description here
// You can write your code in this editor
height = 8
width = 10
depth = 10
gridH = (room_height+ 2*height)/height 
gridW = (room_width+ 2*width)/width 

randHue= irandom(180)
randHue1 =randHue +irandom_range(50,75)

with(obj_progressBar)
{
	hue1 = other.randHue
	hue0 = other.randHue1
}
gridX = []
gridY = []

gridWaveX = []
gridWaveY = []

mergeAmountX = []
mergeAmountY = []

for(var i = 0; i < width+4; i++)
	for(var j = 0; j < height+4; j++)
	{
		gridX[i, j] = irandom_range(-gridW + i*gridW + gridW/4,-gridW +  (i+1)*gridW - gridW/4) - 2*width
		gridY[i, j] = irandom_range(-gridH + j*gridH + gridH/4,-gridH + (j+1)*gridH - gridH/4) - 2*height
		gridWaveX[i,j] = irandom_range(0,1)
		gridWaveY[i,j] = irandom_range(0,1)
		mergeAmountX[i,j] = 0
		mergeAmountY[i,j] = 0
		
	}
	

alarm_set(0,50)	
alarm_set(1,1)
