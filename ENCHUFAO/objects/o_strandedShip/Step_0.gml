/// @description Insert description here
// You can write your code in this editor
_angle += max(0.5*sign(_hpush), 2*(abs(_hpush)),0.5*sign(_vpush), 2*(abs(_vpush)));



if instance_exists(o_chargerStrandedShipFather)
{
	if (point_distance(x,y,o_chargerStrandedShipFather.x,o_chargerStrandedShipFather.y) <= global.strandedShipCableStat*35)
	{
		
		if (connected)
		{
			_hpush = lerp(_hpush, 0, 0.005);
			_vpush = lerp(_vpush, 0, 0.005);
		}
		MoveZeroGrv();
	}
	else
	{
		dir = point_direction(x,y,o_chargerStrandedShipFather.x,o_chargerStrandedShipFather.y)
		_hpush += lengthdir_x(0.5,dir)
		_vpush += lengthdir_y(0.5,dir)
		//alarm[5] = 20;
		o_chargerStrandedShipFather._hpush -= lengthdir_x(0.2 * weight,dir)
		o_chargerStrandedShipFather._vpush -= lengthdir_y(0.2 * weight,dir)
		MoveZeroGrv();
	}
	
	
	if (connectedToEnchufe)
	{
		_hpush = lerp(_hpush, 0, 0.005);
		_vpush = lerp(_vpush, 0, 0.005);
		
		if (alarm[0] <=0) && (!unlocked)
		{
			part_particles_create(global.repairingPart_sys, x+random_range(-15,15), y+random_range(-15,15), global.repairingPart , 1)	
			alarm[0] = 3;
		}
	}
	
	if (charge >= maxCharge)
	{
		for (var i = 0; i < global.numberOfShips; i++)
		{
			shipToUnlock = ds_map_find_value(global.shipList,i);
			if (shipToUnlock.sprite == sprite)
			{
				shipToUnlock.unlocked = 1;
			}
		}
		
		CheckShipToUnlock()
		
		if (unlocked == false)
		{
			unlocked = true;
			o_main.alarm[2] = 60;
		}
	}
}