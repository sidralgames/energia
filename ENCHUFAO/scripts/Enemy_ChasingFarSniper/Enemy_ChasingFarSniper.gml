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

	


	if instance_exists(o_playerShip)
	{
		
		canAim--;
		recoil--;
	
				
		if (tile_meeting(x+hspeed,y,"Tiles"))
		{
		    hspeed = -hspeed*bnc;
		}
		else if (tile_meeting(x,y+vspeed,"Tiles"))
		{
		    vspeed = -vspeed*bnc;
		}
		
		if (isSniper)
		{
			EnemySniperIA();
		}
		
		if (isBomber)
		{
			EnemyBomberIA();
		}
	}
}