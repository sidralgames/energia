/// @description Insert description here
// You can write your code in this editor




if instance_exists(o_playerShip)
{
	if o_playerShip.plugged = true  && (global.Go) && (enchufeActive)
	{
		if cont = false
		{
			cont = true
			alarm[0] = 120;
		}
	}
}
