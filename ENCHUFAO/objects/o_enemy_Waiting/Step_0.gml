/// @description Insert description here
// You can write your code in this editor
if instance_exists(o_playerShip)
{
if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <  100) && (waiting)
{
	waiting = false;
	speed=random(1)+1;
	_speed = speed;
}

if (waiting)
{
	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)
	
	if (alarm[0] <=0)
	{
		alarm[0] = random_range(300,700);
		direction = irandom(360);
		image_angle = direction;
		waitingSpeed = random_range(0.4,0.7);
		breakDistance = random_range(0.005, 0.05);
		accelDistance = random_range(0.005, 0.05);
	
	}
	
	if alarm[0] >= 200 
	{
		speed = lerp(speed, waitingSpeed, accelDistance);
	}
	else
	{
		speed = lerp(speed, 0, breakDistance);
	}

	if (point_distance(xStart, yStart,x, y) > 60)
	{
		direction = (direction + 180) mod 360;
		image_angle = direction;
	}
	
	if tile_meeting(x+lengthdir_x(20,direction), y+lengthdir_y(20,direction), "Tiles")
	{
		direction = (direction + 180) mod 360
		image_angle = direction
		alarm[0] = random_range(50,60);
	}

}

}

if !waiting
{

Controls_Input()

superShotPressed = (key_r3Dowm && key_l3Dowm)

part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(8,direction), y-lengthdir_y(8,direction), global.naveEnemy_Waiting , 1)

if instance_exists(o_playerShip)
{
	if x > __view_get( e__VW.XView, 0 )-20 && x < __view_get( e__VW.XView, 0 )+660
	{
		if y > __view_get( e__VW.YView, 0 )-20 && y < __view_get( e__VW.YView, 0 )+380
		{
			if (o_playerShip.crosshairSuper) && (crosshairSuper = false)
			{
				cross = instance_create(x,y,o_crosshairSuper)
				crosshairSuper = true;
				
			}
		}
	}
	
	if (crosshairSuper)
	{
		if instance_exists(cross)
		{
			cross.x = x;
			cross.y = y;
		
			if (cross.image_speed = 0)
			{
				if (superShotPressed)
				{
					global.flashSuperShot = true;
					o_main.contSuperShotMain = 5;
					o_playerShip.canSuperShot = false;
					o_playerShip.alarm[2] = 120;
					screenShake(7, 30)
					instance_destroy(cross)
					alarm[3] = random_range(0,10)
				}
			}
			else
			{
				if (o_playerShip.contSuperShot = 0)
				{
					crosshairSuper = false;
					instance_destroy(cross)
				}
			}
		}
		else
		{
			crosshairSuper = false;	
		}
	}
	
	
	myPath = path_add();
	mp_grid_path(gridRoom1, myPath, x, y, o_playerShip.x ,o_playerShip.y, true);
	
		if !tile_meeting(x, y, "Tiles")
		{
			if (alarm[5] <= 0)
			{
			path_end()
			var a = point_direction(x, y, o_playerShip.x,  o_playerShip.y);
			direction += sign(dsin(a - direction)) * precision;
			image_angle = direction;
			speed = enemySpeed;	
			}
		
		}
		else
		{
			alarm[5] = 20;
			_speed = enemySpeed
			path_start(myPath,_speed ,path_action_stop, false)
			image_angle = direction
		}

}

}


	if (_hp <= 0)
	{
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
