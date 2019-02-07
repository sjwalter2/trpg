/// @description Insert description here
// You can write your code in this editor
if(edge)
{

	findNeighbors(getMapTileAt(posX - 1, posY, creator))
	findNeighbors(getMapTileAt(posX + 1, posY, creator))
	findNeighbors(getMapTileAt(posX, posY - 1, creator))
	findNeighbors(getMapTileAt(posX, posY + 1, creator))

}
	