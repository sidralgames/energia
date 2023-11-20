// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Enemy_ChasingFarSniper()
{
//--------BOUNCE WITH EACH OTHER---------//
	//enemyToBounce = collision_circle(x,y,10,o_enemyP,false,true)
	//if  enemyToBounce && (enemyToBounce.canBounce) && (!bounced)
	//{
	//	bounced = true;
	//	alarm[8] = 10;
	//    direction = direction+choose(random_range(30,50),random_range(-30,-50))
	//	_angle = direction;
	//} 
	
	//if (alarm[8] <= 0)
	//{
	//	bounced = false;	
	//}
	
//-----------TAKE COVER-------------//
	//EnemyTakeCover();
	
//----------------CHASING MOVENEMT------------------//

	part_particles_create(global.naveEnemy_Waiting_sys, x-lengthdir_x(7,_angle), y-lengthdir_y(7,_angle), global.naveEnemy_Waiting , 1)


	if instance_exists(o_playerShip)
	{
		
		speed = enemySpeed * min(1, global.relativeSpeed+0.2);
		
		var a = point_direction(x, y, o_playerShip.x,  o_playerShip.y);
		direction += sign(dsin(a - direction)) * (precision * global.relativeSpeed);
		_angle = direction;
				
		if (tile_meeting(x+hspeed,y,"Tiles"))
		{
		    hspeed = -hspeed*bnc;
		}
		else if (tile_meeting(x,y+vspeed,"Tiles"))
		{
		    vspeed = -vspeed*bnc;
		}
		
		if (alarm[0] >= 0 && alarm[0] < 120) && (point_distance(x,y, o_playerShip.x, o_playerShip.y) <= 350)
		&& (_angle < point_direction(x,y,o_playerShip.x, o_playerShip.y) + 80)
		&& (_angle > point_direction(x,y,o_playerShip.x, o_playerShip.y) - 80)
		{
			aiming = true;
		}
		if (aiming)
		{
			contLaser--
			if contLaser <=0
			{
				var maxLenght_ = 640;
				for(var i = 0; i < maxLenght_; i++)
				{
				
				     var lx = x + lengthdir_x(i, direction);
				     var ly = y + lengthdir_y(i, direction);
		 
				     if tile_meeting(lx,ly,"Tiles") || place_meeting(lx, ly, o_playerShip) 
					 {
						 maxLenght_=i
						 maxLenght = maxLenght_;
					 }
				 
					 if place_meeting(lx, ly, o_playerShip) 
					 {
					 	playerTargeted = true;
						precision = precisionPlayer;
					 }
				}
				
			contLaser = 7;
			}
		}
		if (alarm[0] <= 30) && (playerTargeted) 
		{
			precision = lerp(precision, 0.2, 0.05)
			enemySpeed = lerp(enemySpeed, 0 ,0.05)	
		}
		else
		{
			precision = lerp(precision, precisionInitial, 0.05)
			enemySpeed = lerp(enemySpeed, enemySpeedInitial ,0.05)	
		}
		
		
				
		if (alarm[0] <= 0) 
		{
			
				var bullet = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
				"Bullets", o_bulletEnemy);
				bullet.bulletSpeed = 5.25;
				bullet.image_angle = _angle-offBullet;
				bullet.direction = _angle-offBullet;
				
				var bullet2 = instance_create_layer(x + lengthdir_x(10, _angle), y + lengthdir_y(10, _angle),
				"Bullets", o_bulletEnemy);
				bullet2.bulletSpeed = 5.25;
				bullet2.image_angle = _angle+offBullet;
				bullet2.direction = _angle+offBullet;
				playerTargeted = false;
			
			alarm[0] = reloadTime
			aiming = false;
		}
		
	}
}