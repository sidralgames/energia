/// @description Insert description here
// You can write your code in this editor

// Puede escribir su código en este editor

	if (global.bombIsHomingBomb)
	{
		_hp -= 5+(global.superShot+global.amplifyPowerAmmo)*global.damageDealt;
	}
	else
	{
		_hp = 0
	}


instance_destroy(other);



