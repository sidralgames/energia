/// @description Insert description here
// You can write your code in this editor
if(room = Sala_0) || (room = Sala_SecondBoss) || (room = Sala_BossWorm)
{
	//--- TURRET ---//
	if !collision_circle(x,y,18,o_wall,false,true)
	{
		if  point_distance(x,y,o_playerShip.x,o_playerShip.y)>100 && irandom(oddsTurret) == oddsTurret
		{
			instance_create_layer(x,y,"EnemiesHUE",o_torreta)
		}
	}
	
	//--- ENEMY ANCHOR ---//
	CreateEnemyAnchorWall();
	
	//--- LASER TRAP ---//
	CreateLaserTrapWall();
	
	
	//-- SMASHER TRAP --//
	//if instance_exists(o_waller)
	//{
	//	if (o_waller.levelType = "Corridor")
	//	{
	//		CreateSmashTrap();
	//	}
	//}
	
	//--- DISC TRAP---//
	//if (global.level>=1)
	//{
	//	if !collision_circle(x,y,18,o_laser,false,true)
	//	{
	//		CreateDiscTrapWall();
	//	}
	//}
}




