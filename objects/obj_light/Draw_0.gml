/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(.75/size)
draw_set_color(c_white)
for(var i = 1; i < currentSize+irandom(1); i+=1)
	draw_circle(x,y,i,0)
	
currentSize+=grow
if(currentSize > size && alarm_get(0) = -1)
{
	alarm_set(0,2*size)
	grow = 0	
}
if(currentSize <= 0 && grow < 0)
	instance_destroy()
