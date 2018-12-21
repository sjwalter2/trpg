/// @description Insert description here
// You can write your code in this editor
if(upgrade != 0)
{
	damage*=(upgrade + 1)
}
cardText = beginText + string(abs(damage)) 
if(magic)
	cardText += " + M*" + string(abs(bonusDamage))
	
if(physical)
	cardText += " + P*" +string(abs(bonusDamage))
	
if(dexterity)
	cardText += " + R*" +string(abs(bonusDamage))
	
cardText += " DMG"