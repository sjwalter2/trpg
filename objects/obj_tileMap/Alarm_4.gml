/// @description Insert description here
// You can write your code in this editor
var unlockMax = 0
var unlocks = []
var countriesChecked = []
var newUnlock = 0
var allUnlocked = 1
with(obj_countries)
{
	unlockMax = countries
	countriesChecked = countriesUnlocked
	for(var i = 2; i < countries; i++)
		if(countriesFinished[i] = 0)
			allUnlocked = 0
}	
if(allUnlocked)
	game_restart()
else
{
	with(obj_tileMap)
	{
		if(edge && unlocked)
		{
			for(var i = 0; i < unlockMax; i++)
			{
				for(var j = 0; j < array_length_1d(neighbors); j++)	
				{
					if(neighbors[j] = i && countriesChecked[i] = 0)	
					{
						countriesChecked[i] = 1
						newUnlock = 1
						with(obj_tileMap)
							if(gridNum = i && !unlocked)
								unlockable = 1
					}
				}
			}
		}			
	}
	if(!newUnlock)
	{
		var toUnlock = 0
		with(obj_tileMap)	
		{
			if(!unlocked)	
			{
				toUnlock = gridNum	
			}		
		}
		with(obj_tileMap)
			if(toUnlock = gridNum)
				unlockable = 1
	}
}