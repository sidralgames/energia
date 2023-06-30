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
	if (image_index >= 23)
	{
		image_index =19;
	}
}

if (_hp <= 0)
{
	instance_create(x,y,o_exploBomb)
	instance_destroy();	
}



