var xx = argument0
var yy = argument1
var create = argument2
var tile = noone
with(create)
{
	if(yy >= 0 && yy < height && xx >= 0 && xx < width)
	tile = tileGrid[yy,xx]
}
return tile