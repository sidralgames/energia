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
	
	instance_deactivate_object(o_main)
	instance_deactivate_object(o_pause)
	instance_destroy(all);
	instance_activate_object(o_main)
	instance_activate_object(o_pause)
	room_goto(Sala_0)
	global.level = 1;
	

}



