// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoCablePhysics()
{

	if instance_exists(myCharger)
	{
		if (point_distance(x,y,myCharger.x,myCharger.y) <= strandedShipCableStat*35)
		{
			
			if (charge < maxCharge)
			{
				_hpush = lerp(_hpush, 0, 0.005);
				_vpush = lerp(_vpush, 0, 0.005);
			}
			
			
		}
		else
		{
			
			dir = point_direction(x,y,myCharger.x,myCharger.y)
			_hpush += lengthdir_x(0.2*weight,dir)
			_vpush += lengthdir_y(0.2*weight,dir)

			myCharger._hpush -= lengthdir_x(0.5 * weight,dir)
			myCharger._vpush -= lengthdir_y(0.5 * weight,dir)
			
			
		}
	}
}