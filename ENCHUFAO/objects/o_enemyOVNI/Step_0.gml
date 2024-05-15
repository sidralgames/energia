/// @description Insert description here
// You can write your code in this editor
Controls_Input();

event_inherited();

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

if instance_exists(o_playerShip)
{
	mp_grid_path(global.gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
	_speed = random_range(_speedMin,_speedMax)
		
	if (alarm[2] <=0)
	{
		path_start(myPath,_speed ,path_action_stop, false)
	}
	else
	{
		path_end();
		
		Move();	
	}	

	if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 300)
	&& ((global.invisibleCloak == false) && (global.inSmokeArea = false))
	{
		dire = direction;
		
		if (alarm[0] <= 0)
		{
			dirMisil = irandom(359);
			instance_create_layer(x+lengthdir_x(10, dirMisil) , y+lengthdir_y(10, dirMisil), "Bullets", o_misilBomb);
			alarm[0] = random_range(120,200)
		}
	}
	
	var a = point_direction(xprevious, yprevious, o_playerShip.x, o_playerShip.y);
	direction += sign(dsin(a - direction)) * precision*global.relativeSpeed;
	_angle += _speed*20*global.relativeSpeed;

	if (_hp <= 0)
	{
		EnemyDeathShake();
		
		if instance_exists(cross)
		{
			instance_destroy(cross)
		}
		
		global.XPpoints +=30;
		explo = instance_create(x,y,o_exploPurple)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
		instance_destroy();
	}
}


