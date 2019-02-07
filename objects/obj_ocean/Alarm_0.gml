/// @description Insert description here
// You can write your code in this editor
var nextWaveX = gridWaveX
var nextWaveY = gridWaveY

for(var i = 0; i < width+3; i++)
{
	for(var j = 0; j < height+3; j++)
	{
		if(gridWaveX[i,j])
		{
			gridWaveX[i,j] = 0
			nextWaveX[i,j] = 0
			nextWaveX[i+1,j] = 1
		}
		if(gridWaveY[i,j])
		{
			gridWaveY[i,j] = 0
			nextWaveY[i,j] = 0
			nextWaveY[i,j+1] = 1
		}	
	}
}
gridWaveX = nextWaveX
gridWaveY = nextWaveY
alarm_set(0,140)

