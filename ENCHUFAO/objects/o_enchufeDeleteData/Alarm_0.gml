/// @description Insert description here
// You can write your code in this editor
if (cont = true)
{
	LoadDefaultDataIngame();
	SaveGame();
	
	instance_destroy(o_cable);
	instance_destroy(o_charger);
	instance_destroy(o_playerShip);
	instance_destroy(o_shield);
	Stats._visible = true;
	o_nextRoom.shipSelected = false
	_visible = false;
	o_enchufeInicio._visible = false;
	
	o_enchufeResetSelector._visible = false;
}




