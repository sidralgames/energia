/// @description Insert description here
// You can write your code in this editor


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





