/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
	x = o_playerShip.x;
	y = o_playerShip.y;
}

if (round(global.shields<=0))
{
	if instance_exists(o_playerShip)
	{
		o_playerShip.shieldCreated = false;
	}
	instance_destroy();
}

if (global.haveInvisibiltyCloak && global.invisibleCloak)
{
	image_alpha = lerp(image_alpha, 0.25, 0.03);
}
else
{
	image_alpha = lerp(image_alpha, 0.6, 0.05);
	
	if (image_alpha > 0.5)
	{
		image_alpha = 0.6;
	}
}






