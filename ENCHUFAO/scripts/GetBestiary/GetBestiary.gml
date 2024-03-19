// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetBestiary()
{
	draw_set_halign(fa_center);
	
	initialY = 220;
	initialX = lerp(initialX, 320, factorInitialX);
	initialXText = lerp(initialXText, 320, 0.15);
	initialXInterrog = lerp(initialXInterrog, 320, 0.15);
	
	enemy = ds_map_find_value(global.bestiaryList, selectedBest);
	
	if (alphaInfo<=1)
	{
		alphaInfo+=0.1
	}
	
	if (enemy.unlocked = 0) || (enemy.killsNum < 1)
	{
		//BestiaryDrawUnlocked();
		BestiaryDrawUnknown();
		//BestiaryDrawLocked();
		

	}
	
	if (enemy.killsNum >= 1) && (enemy.killsNum < enemy.killsToUnlock)
	{
		BestiaryDrawLocked();
	}

	if (enemy.unlocked) && (enemy.killsNum > enemy.killsToUnlock)
	{
		BestiaryDrawUnlocked();
	}
}