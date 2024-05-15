// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyEnchufeFree()
{
	if (image_index >=11)
	{
		image_speed = 0;
	}
	
	if instance_exists(o_playerShip)
	{
		MoveZeroGrv();	
		
		_angle += _hpush*5*global.relativeSpeed;
	}
	
	if (canPlug >= 0)
	{
		canPlug -=0.5;
	}
	
	enchufe = collision_circle(x,y,5,o_enchufeStandard_Father,false,true);
	
	if (canPlug <= 0) && (enchufe)
	{
		_hp = max_hp;
		state = ENEMYSTATE.PLUGGED;
		instance_destroy(cable);
		sprite_index = sprite_plugged;
	}
}