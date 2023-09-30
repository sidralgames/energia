/// @description Insert description here
// You can write your code in this editor
Controls_Input()

superShotPressed = (key_r3Dowm && key_l3Dowm)

part_particles_create(global.naveEnemy1_sys, x, y, global.naveEnemy1 , 3)

if instance_exists(o_playerShip)
{
	
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


