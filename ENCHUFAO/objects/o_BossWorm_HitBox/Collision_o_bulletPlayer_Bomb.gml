/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(Metal)
{
	if (Metal.isVisible = false) && (_hp > 0)
	{
		if (global.bombIsHomingBomb)
		{
			if (3+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt) > _hp 
			{
				global.BossWormHP -= _hp;
				_hp = 0;
			} 
			else 
			{
				global.BossWormHP -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
				_hp -= 3+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
			}
		}
		else
		{
			if (5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt) > _hp 
			{
				global.BossWormHP -= _hp;
				_hp = 0;
			} 
			else 
			{
				global.BossWormHP -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
				_hp -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
			}
			
		}
	
		instance_destroy(other)
	}
	else
	{
		instance_destroy(other)
	}
}
