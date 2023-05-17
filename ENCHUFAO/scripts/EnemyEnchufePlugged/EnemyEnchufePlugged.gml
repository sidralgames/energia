// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function EnemyEnchufePlugged()
{
	x = enchufe.x;
	y = enchufe.y;
	
	if _hp <= 0
	{
		state = ENEMYSTATE.FREE
	}
	
	if (_hp <= 10)
	{	
		image_speed = 0.6
		_hpush = choose(1,-1);
		_vpush = choose(1,-1);
		global.cableColor = c_red;
		cable = instance_create_layer(x,y,"Cable", o_cableEnemy)
		state = ENEMYSTATE.FREE;	
	}
	
}