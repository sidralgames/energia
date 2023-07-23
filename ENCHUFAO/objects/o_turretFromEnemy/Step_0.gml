/// @description Insert description here
// You can write your code in this editor

if alarm[0] <= 0
{
	bullets = 4;
	for( i = 0; i < bullets; i++ )
	{
		inst = instance_create( x, y, o_bulletTorreta);
		if instance_exists(inst)
		{
			inst.direction = i * (360 / bullets );
			inst.hp = 90;
		}
	}
	
	alarm[0] = 120;
}


if (hp <= 0)
{
	instance_destroy();	
}
