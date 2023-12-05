/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (Metal.isVisible = false) && (_hp > 0)
{
	if (5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt) > _hp {
		global.BossWormHP -= _hp;
		_hp = 0;
	} 
	else 
	{
		_hp -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
		global.BossWormHP -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
	}
	
	instance_destroy(other)
}
else
{
	instance_destroy(other)
}

