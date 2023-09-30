/// @description Insert description here
// You can write your code in this editor

_hpush = lerp(_hpush, 0, 0.05);
_vpush = lerp(_vpush, 0, 0.05);

image_angle += max(0.5*sign(_hpush), 5*(abs(_hpush)),0.5*sign(_vpush), 5*(abs(_vpush))*global.relativeSpeed);

MoveZeroGrv();


if alarm[0] <= 0
{
	bullets = 4;
	for( i = 0; i < bullets; i++ )
	{
		inst = instance_create( x, y, o_bulletTorreta);
		if instance_exists(inst)
		{
			inst.createdFromEnemy = true;
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
