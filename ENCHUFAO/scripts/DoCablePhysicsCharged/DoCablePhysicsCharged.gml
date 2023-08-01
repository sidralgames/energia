// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DoCablePhysicsCharged()
{
	if instance_exists(o_chargerStrandedShipFather)
	{
		if (point_distance(x,y,o_chargerStrandedShipFather.x,o_chargerStrandedShipFather.y) <= strandedShipCableStat*35)
		{
			if (charge < maxCharge)
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

			o_chargerStrandedShipFather._hpush -= lengthdir_x(0.2 * weight,dir)
			o_chargerStrandedShipFather._vpush -= lengthdir_y(0.2 * weight,dir)
			
			MoveZeroGrv();
		}
	}
}