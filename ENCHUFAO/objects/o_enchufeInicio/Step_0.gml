/// @description Insert description here
// You can write your code in this editor




if instance_exists(o_playerShip)
{
	if o_playerShip.plugged = true  && (global.Go) && (enchufeActive)
	{
		if cont = false
		{	if instance_exists(o_chipFather)
			{
				o_chipFather._hp = 10;
			}
			cont = true
			alarm[0] = 120;
		}
	}
}
