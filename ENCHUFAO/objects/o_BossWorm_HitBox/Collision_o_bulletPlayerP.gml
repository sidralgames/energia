/// @description Insert description here
// You can write your code in this editor
//if (state = ENEMYSTATE.WAITING)
//{
//	alert = instance_create(x,y,o_invisibleAlert);
			
//			speed=(random(1)+1) * global.relativeSpeed;
//			_speed = speed;
			
//			if instance_exists(alert)
//			{
//				state = ENEMYSTATE.CHASING;
//			}
//}
if instance_exists(Metal)
{
if instance_exists(worm) & (hurts) && (Metal.isVisible = false) && (_hp > 0)
{
	if (global.piercingShot)
	{
		if (ds_list_find_index(other.collisionIds, id) == -1)
		{
			global.BossWormHP-= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
			_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt; //--- DO DAMAGE TO ENEMY ---//
			ds_list_add(other.collisionIds, id);
			other.hp -= 1; 
			
		}
	}
	else 
	{
		global.BossWormHP-= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
		_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt; //--- DO DAMAGE TO ENEMY ---//
		
		instance_destroy(other);
		RecoverBullet();
	}
	
	
		//--- PUSH ---//
	if (global.bulletsPushenemiesIsOn) && (worm.repelled = false) && (worm.state != ENEMYSTATE.PLUGGED) && (!isShield)
	{
		if (!worm.shocked)
		{
			path_end();
			worm.shocked = true;
			worm.alarm[9] = 10;
			
			worm.dirShoked = _angle;
	
			worm.hspeed += other.hspeed/5.5;
			worm.vspeed += other.vspeed/5.5;
			worm.state = ENEMYSTATE.SHOCKED;
			worm.takeCover = false;
		}
	}
	
		//--- BOMB ---//
	if (global.bulletsAreBombs)
	{
		bomb = instance_create(other.x,other.y,o_exploBomb)
		bomb.sprite_index = s_exploOrange;
		bomb.isFrom = "BulletBomb";
		bomb.scale = 0.7;
	}
	
		//--- BURN ---//
	if (global.bulletsBurnIsOn)
	{
		if (isShield == false) && (burned == false)
		{
			burned = true;	
		}
	}
	
	if (global.bulletsElectroIsOn)
	{
		if (worm.isShield == false) && (worm.electrocutated == false)
		{
			worm.electrocutated = true;	
		}
	}
	
	flashAlpha = 1;
}
else
{
	instance_destroy(other)
}
}









