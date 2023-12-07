/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if instance_exists(worm)
{
	if instance_exists(Metal)
	{
		if (Metal.isVisible = false) && (_hp > 0)
		{
			if (1*global.damageDealt > _hp )
			{
				global.BossWormHP -= _hp;
				_hp = 0;
		
			} else {
				global.BossWormHP -= 1*global.damageDealt;
				_hp -= 1*global.damageDealt;
			}
		}
	}
}



