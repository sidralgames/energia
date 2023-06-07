/// @description Insert description here
// You can write your code in this editor
Controls_Input()

superShotPressed = (key_r3Dowm && key_l3Dowm)

part_particles_create(global.naveEnemy1_sys, x, y, global.naveEnemy1 , 3)

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
	
	switch(stateBoss)
	{
		case 0: 
		{
			if tile_meeting(x, y, "Tiles")
			{
				alarm[5] = 30;
				image_angle = direction;
		
				hspeed = sign(hspeed)*-hspeed;
				vspeed = sign(vspeed)*-vspeed;
		
				
			}
			
			if alarm[5]<=0
			{
				var a = point_direction(x, y, o_playerShip.x,  o_playerShip.y);
				direction += sign(dsin(a - direction)) * precision;
				image_angle = direction;
				speed = enemySpeed;	
			}

			
			
		}break;
		
	}
	
		
		
		if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 300)
		{
			dire = direction;
			if (alarm[0] <= 0)
			{
				var bullet = instance_create_layer(x + lengthdir_x(50, dire), y + lengthdir_y(50, dire),
				"Bullets", o_bulletEnemy);
				
				var bullet2 = instance_create_layer(x + lengthdir_x(50, dire), y + lengthdir_y(50, dire),
				"Bullets", o_bulletEnemy);
				
				
				off =  -5
				bullet._hpush = lengthdir_x(3, dire + off);
				bullet._vpush = lengthdir_y(3, dire + off);
				bullet.image_angle = dire+off;
				bullet.direction = dire+off;
				
				off2 =  5
				bullet2._hpush = lengthdir_x(3, dire + off2);
				bullet2._vpush = lengthdir_y(3, dire + off2);
				bullet2.image_angle = dire+off;
				bullet2.direction = dire+off;
			
				alarm[0] = random_range(20,120)
			}
		}

	if (_hp <= 0)
	{
		screenShake(1,10)
		if instance_exists(cross)
		{
			instance_destroy(cross)
		}
		instance_destroy(cable)
		global.XPpoints +=30;
		explo = instance_create(x,y,o_explo2)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
		instance_destroy();
	}
	

	



}


