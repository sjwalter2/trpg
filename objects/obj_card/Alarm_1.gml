/// @description Set card text
// You can write your code in this editor
if(upgrade != 0)
{
	damage*=(upgrade + 1)
}
cardText = beginText + string(abs(damage)) 
var bonus = ""


for(var i = 0; i < string_length(string(abs(bonusDamage))); i++)
	if(string_char_at(string(abs(bonusDamage)),i) != "0")
		bonus += string_char_at(string(abs(bonusDamage)),i)

if(magic)
{
	cardText +=  " + "
	if(abs(bonusDamage) != 1)	
		cardText +=  bonus
	cardText += "M"
}
	
	
if(physical)
{
	cardText +=  " + "
	if(abs(bonusDamage) != 1)	
		cardText += bonus
	cardText += "P"

}
	
if(dexterity)
{
	cardText +=  " + "
	if(abs(bonusDamage) != 1)	
		cardText += bonus
	cardText += "R"
}
	
cardText += " DMG"