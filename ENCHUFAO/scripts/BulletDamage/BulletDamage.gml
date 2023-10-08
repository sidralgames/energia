// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BulletDamage()
{
	
	if (global.piercingShot)
	{
		if (ds_list_find_index(other.collisionIds, id) == -1)
		{
			_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
			ds_list_add(other.collisionIds, id);
			other.hp -= 1; 
		}
	}
	else
	{
		_hp -= (global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
		instance_destroy(other);
	}
	
	if (global.bulletsPushenemiesIsOn) && (repelled = false) && (state != ENEMYSTATE.PLUGGED) && (!isShield)
	{
		if (!shocked)
		{
			path_end();
			shocked = true;
			alarm[9] = 10;
			
			dirShoked = _angle;
	
			_hpush += other._hpush/3.5;
			_vpush += other._vpush/3.5;

			state = ENEMYSTATE.SHOCKED;
			takeCover = false;
		}
	}
	
	if (global.bulletsAreBombs)
	{
		bomb = instance_create(other.x,other.y,o_exploBomb)
		bomb.sprite_index = s_explo3;
		bomb.isFromBullet = true;
		bomb.scale = 0.7;
	}
}