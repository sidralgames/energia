// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckShields()
{
	if (global.shields >= 1)
	{
		if (shieldCreated = false)
		{
			shieldCreated = true;
			instance_create_layer(x,y,"Shield",o_shield);
		}
	
		if instance_exists(o_shield)
		{
			o_shield.x = x;
			o_shield.y = y;
		}
	
	}
}