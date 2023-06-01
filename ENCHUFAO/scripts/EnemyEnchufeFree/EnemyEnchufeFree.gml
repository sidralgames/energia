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
	
	MoveZeroGrv()	
		
	//if (version2)
	//{
	//	if (alarm[4] <= 0)
	//	{
	//		for( i = 0; i < 4; i++ )
	//		{
	//		    inst = instance_create_layer( x+_hpush*15, y+_vpush*15, "Bullets", o_bullet_enemyPlugged);
	//			if instance_exists(inst)
	//			{
	//			    inst.direction = i * (360 / 4 ) + offset;
	//			    inst.speed=1.5;
	//				inst.direBullet = 0;
	//			}
	//		}
	
	//		offset=offset+45;
	//		direBullet = direBullet*-1;
	//		alarm[4] = 120
	//	}
	//}
	
	if (_hp <= 0)
	{
		if (state = ENEMYSTATE.FREE)
		{
			instance_destroy(cable)
		}
		screenShake(1,10)
		if instance_exists(cross)
		{
			instance_destroy(cross)
		}
		global.XPpoints +=30;
		explo = instance_create(x,y,o_explo2)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
		instance_destroy();
	}
	
	_angle += _hpush*5;
	
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