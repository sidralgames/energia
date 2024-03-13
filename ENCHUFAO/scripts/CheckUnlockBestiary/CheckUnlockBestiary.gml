// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function CheckUnlockBestiary(argument0, argument1)
{
	if (argument0 == 0)
	{
		argument0 = 1;
		enemy = ds_map_find_value(global.bestiaryList, argument1);
		enemy.unlocked = true;
		global.enemiesInBestiary +=1;
	}
}