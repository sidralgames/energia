/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
audio_stop_sound(soundLaser);
audio_stop_sound(sndActivating)

if (killedByPlayer)
{
	global.enemyLaserTrapKills +=1;
	
	if (global.bestiaryEnemyLaserTrapUnlocked = 0)
	{
		global.bestiaryEnemyLaserTrapUnlocked = 1;
		enemy = ds_map_find_value(global.bestiaryList, enemyBestiaryNumber);
		enemy.unlocked = 1;
		global.enemiesInBestiary +=1;
	}
}



