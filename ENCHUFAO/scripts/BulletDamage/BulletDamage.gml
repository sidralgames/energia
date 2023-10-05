// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function BulletDamage()
{
	if (global.piercingShot)
	{
		if (ds_list_find_index(other.collisionIds, id) == -1)
		{
			_hp -= global.superShot+global.amplifyPowerAmmo;
			ds_list_add(other.collisionIds, id);
			other.hp -= 1; 
		}
	}
	else
	{
		_hp -= global.superShot+global.amplifyPowerAmmo;
		instance_destroy(other);
	}

}