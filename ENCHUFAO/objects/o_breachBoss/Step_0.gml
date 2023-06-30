/// @description Insert description here
// You can write your code in this editor
_hp = global.BossBreach_HP;

if (alarm[0] <= 0)
{
	image_speed = -imageSpeed;
	
	if (image_index <=1)
	{
		instance_destroy();
	}
}
else
{
	if (image_index >= 40)
	{
		image_index =24;
	}
}

if (_hp <= 0)
{
	instance_create(x,y,o_exploBomb)
	instance_destroy();	
}



