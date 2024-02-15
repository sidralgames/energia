/// @description Insert description here
// You can write your code in this editor
if (cont = true)
{
	//------ CHECK SHIP TO SET BONUS UPGRADE -----//
	AddUpgradeBonus();
	
	if instance_exists(o_chipFather)
	{
		o_chipFather._hp = 1;
	}
	
	room_goto(Sala_0)
	global.level = 1;
	

}



