/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	if (o_playerShip.plugged)
	{
		if (charging == false)
		{
			instance_destroy()	
		}
	}
}




