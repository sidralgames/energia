/// @description Insert description here
// You can write your code in this editor
if(room = Sala_0) || (room = Sala_SecondBoss)
{
	if !collision_circle(x,y,18,o_wall,false,true)
	{
		if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100 && irandom(oddsTurret) == oddsTurret
		{
			instance_create_layer(x,y,"Enemies",o_torreta)
			
		}
	}
	
	if !collision_circle(x,y,18,o_wall,false,true)
	{
		if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100 && irandom(oddsEnemyMouth) == oddsEnemyMouth
		{
			instance_create_layer(x,y,"Meteors",o_mouthAnchor);
			instance_create_layer(x+32,y,"Meteors",o_enemy_Mouth);
			
		}
	}
	if !collision_line(x,y,x,y-28,o_wall,false,true)
	{
		if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100 && irandom(oddsEnemyMouth) == oddsEnemyMouth
		{
			instance_create_layer(x,y-12,"Meteors",o_mouthAnchor);
			instance_create_layer(x,y-32,"Meteors",o_enemy_Mouth);
			
		}
	}
	
		if !collision_line(x,y,x,y+28,o_wall,false,true)
	{
		if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100 && irandom(oddsEnemyMouth) == oddsEnemyMouth
		{
			instance_create_layer(x,y+12,"Meteors",o_mouthAnchor);
			instance_create_layer(x,y+32,"Meteors",o_enemy_Mouth);
			
		}
	}


	
	if (!collision_line(x,y,x,y-32, o_wall, false, true)) && (oddsLaser = irandom(oddsLaser))
	{
		for(var i = 0; i < max_length; i++)
		{
			var ly = yy + lengthdir_y(i, 90);
			if place_meeting(x,ly,o_wall)	
			{
				max_length=i;
				laserB = instance_create_layer(x,ly-16,"Laser",o_laser);
				laserB.image_yscale=-1;
				laserB.canShot = false;
				laserB.long = 0;
			}
		}
		if instance_exists(laserB)
		{
			laserA = instance_create_layer(x,y-16,"Laser",o_laser);
			laserA.canShot = true;
			laserA.long = max_length;
		}
	}
}




