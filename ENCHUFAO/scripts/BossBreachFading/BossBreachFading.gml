// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BossBreachFading()
{
	sprite_index = spriteStart;
	
	if (sprite_index = spriteStart)
	{
		image_speed = -(imageSpeed+0.2) * global.relativeSpeed;
		if (image_index <=1)
		{
			o_breachSpawner.canBreach = true;
			instance_destroy();
		}
	}
}