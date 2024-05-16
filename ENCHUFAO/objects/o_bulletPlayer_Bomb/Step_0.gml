/// @description Insert description here
// You can write your code in this editor

CheckInScreen(50, 2);

if (set = false)
{
	set = true;
	if (global.bombIsHomingBomb) && (called = false)
	{
		scaleEnd = 0.2;
		correctedTime = 60;
		corrected = false;
		dist = random_range(120,150);
		precision = random_range(3,3.75);
		sprite_index = s_friend
	}
}

//---- IS HOMING BOMB? ----//
if (global.bombIsHomingBomb) && (called = false)
{
	_hpHoming --;
	
	if (_hpHoming <= 0)
	{
		instance_destroy();
	}
	
	_speed = lerp(_speed, 4.5, 0.05);
	
	part_particles_create(global.naveFriend_sys, x,y, global.naveFriend, 1);
	
	if (corrected = false)
	{
		correctedTime--;
		if (correctedTime <= 0)
		{
			corrected = true;
		}
		
		enemyNear = instance_nearest(x,y,o_enemyP);
		bossNear = instance_nearest(x,y,o_BossFather);
	
		if (instance_exists(bossNear)) && (bossNear.isBombable) && (point_distance(x,y, bossNear.x, bossNear.y) < dist/1.5)
		{
			var a = point_direction(x,y, bossNear.x, bossNear.y);
			direction += sign(dsin(a - direction)) * (precision * min(1, global.relativeSpeed+0.2));
			_angle = direction;
		}
		else 
		if (instance_exists(enemyNear)) && (point_distance(x,y, enemyNear.x, enemyNear.y) <  dist/1.5)
		{
			var a = point_direction(x,y, enemyNear.x, enemyNear.y);
			direction += sign(dsin(a - direction)) * (precision * min(1, global.relativeSpeed+0.2));
			_angle = direction;
		}
		else
		{
			_angle = lerp(_angle, directionOriginal, 0.05);
			direction = _angle;
		}
	}
	else
	{
		enemyNear = instance_nearest(x,y,o_enemyP);
		bossNear = instance_nearest(x,y,o_BossFather);
	
		if (instance_exists(bossNear)) && (bossNear.isBombable) && (point_distance(x,y, bossNear.x, bossNear.y) < dist)
		{
			var a = point_direction(x,y, bossNear.x, bossNear.y);
			direction += sign(dsin(a - direction)) * (precision * min(1, global.relativeSpeed+0.2));
			_angle = direction;
		}
		else
		if (instance_exists(enemyNear)) && (point_distance(x,y, enemyNear.x, enemyNear.y) <  dist)
		{
			var a = point_direction(x,y, enemyNear.x, enemyNear.y);
			direction += sign(dsin(a - direction)) * (precision * min(1, global.relativeSpeed+0.2));
			_angle = direction;
		}
		else
		{
			_angle = direction;
		}
	}
	
	if (tile_meeting(x+hspeed,y,"Tiles"))
	{
		instance_destroy();
	} 

	if (tile_meeting(x,y+vspeed,"Tiles"))
	{
		instance_destroy();
	} 
	
	speed = _speed * min(1, global.relativeSpeed+0.2);
}
else //----- STANDARD BOMB ----//
{
	_hpush = lerp(_hpush, 0, 0.05);
	_vpush = lerp(_vpush, 0, 0.05);

	_angle += max(0.5*sign(_hpush), 5*(abs(_hpush)),0.5*sign(_vpush), 5*(abs(_vpush))*global.relativeSpeed);

	MoveZeroGrv_Bomb();

	if (alarm[0] <=0) && (abs(_hpush) <= minVel && abs(_vpush) <= minVel)
	{
		instance_destroy();	
	}
}