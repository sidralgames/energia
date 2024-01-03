/// @description Insert description here
// You can write your code in this editor

event_inherited();

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

MoveZeroGrv_Speed();
	
_angle -= sign(hspeed)*spin*global.relativeSpeed;
speed = enemySpeed * min(1, global.relativeSpeed+0.2);

if instance_exists(o_playerShip)
{
	switch(state)
	{
		case 0:
		{
			spin = spinIdle
			image_speed = 0;
			image_index = 0;
		
			if (point_distance(x,y,o_playerShip.x, o_playerShip.y) <= 150) && (global.invisibleCloak == false) 
			{
				state = 1;
			}
		}
		break;
	
		case 1:
		{
			image_speed = 0.5;
			
			if (image_index >=15)
			{
				image_speed = 0;
				spin = lerp(spin, spinRampage, 0.05);
			}
		
			
		
			if (spin >= spinRampage-0.8) && (image_index >= 15)
			{
				enemySpeedRampage = random_range(3.5, 5);
				spin = spinRampage;
				dire = point_direction(x,y,o_playerShip.x, o_playerShip.y);
				image_speed = 0;
				direction = dire;
				enemySpeed = enemySpeedRampage;
				state = 2;	
			}
		}
		break;
	
		case 2:
		{
			contParts --;
			if (contParts <=0)
			{
				part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(random_range(5,10),direction), y-lengthdir_y(random_range(5,10),direction), global.naveEnemy_Waiting , 1)
				contParts = contPartsInitial;
			}
			spin = lerp(spin, spinIdle, 0.005);
			enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.01)
			if (enemySpeed <= enemySpeedInitial+0.25) 
			{
				state = 0;	
			}
		}
		break;
		
		case ENEMYSTATE.SHOCKED:
		{
			spin = lerp(spin, spinIdle, 0.005);
			enemySpeed = lerp(enemySpeed, enemySpeedInitial, 0.005)
			if (enemySpeed <= enemySpeedInitial+0.4) 
			{
				state = 0;	
			}
		}
	}

	if (_hp <= 0)
	{
		EnemyDeathShake();
		
		if instance_exists(o_playerShip)
		{
			global.XPpoints +=30;
		}
		explo = instance_create(x,y,o_explo2)
		explo.image_xscale = 0.5;
		explo.image_yscale = 0.5;
	
		discs = 4;
		for( i = 0; i < discs; i++ )
		{
		   inst = instance_create_layer( x, y, "Enemies", o_bulletDisc);
			if instance_exists(inst)
			{
			    inst.direction = i * (360 / discs ) + 45;
				inst.discSpeed = 2;
			}
		}
		
		
		instance_destroy();
	}

}


