// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BulletDamage()
{
	//--- PIERCING ---//
	if (global.piercingShot) && (other.isFrom = "Player")
	{
		if (ds_list_find_index(other.collisionIds, id) == -1)
		{
			_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt; //--- DO DAMAGE TO ENEMY ---//
			ds_list_add(other.collisionIds, id);
			other.hp -= 1; 
		}
	}
	else //---- STANDARD ----//
	{
		_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt; //--- DO DAMAGE TO ENEMY ---//
		
		if (other.isFrom = "Player")
		{
			RecoverBullet();
		}
		
		instance_destroy(other);
	}
	
	
	//--- PUSH ---//
	if (global.bulletsPushenemiesIsOn) && (repelled = false)
	&& (state != ENEMYSTATE.PLUGGED) && (!isShield) && (other.isFrom = "Player")
	{
		if (!shocked)
		{
			path_end();
			shocked = true;
			alarm[9] = 10;
			
			dirShoked = _angle;
	
			hspeed += other.hspeed/5.5;
			vspeed += other.vspeed/5.5;

			state = ENEMYSTATE.SHOCKED;
			takeCover = false;
		}
	}
	
	
	//---- BOMB ----//
	if (global.bulletsAreBombs) && (other.isFrom = "Player")
	{
		bomb = instance_create(other.x,other.y,o_exploBomb)
		bomb.sprite_index = s_exploOrange;
		bomb.isFrom = "BulletBomb";
		bomb.scale = 0.7;
	}
	
	
	//---- FREEZING ----//
	if (global.bulletsIceIsOn) && (other.isFrom = "Player")
	{
		if (isShield == false)
		{
			freeze = true;
			freezing +=0.3;
			slowed = true;	
			slowedCont += 30;
			slowedPeta += 0.1;
			
		}
	}
	
	
	//--- BURN ---//
	if (global.bulletsBurnIsOn) && (other.isFrom = "Player")
	{
		if (isShield == false) && (burned == false)
		{
			burned = true;	
		}
	}
	
	
	//---- ELECTRO ----//
	if (global.bulletsElectroIsOn) && (other.isFrom = "Player")
	{
		if (isShield == false) && (electrocutated == false)
		{
			electrocutated = true;	
		}
	}
}