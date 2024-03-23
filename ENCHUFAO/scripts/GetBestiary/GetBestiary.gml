// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function GetBestiary()
{
	draw_set_halign(fa_center);
	factorInitialXWall = 0.16;
	
	InitialYName = 110;
	initialY = 200;
	initialX = lerp(initialX, 320, factorInitialX);
	InitialYText = 192;
	initialXText = lerp(initialXText, 320, 0.15);
	initialXInterrog = lerp(initialXInterrog, 320, 0.15);
	InitialYInterrog = 180;
	initialYPaginator = 80;
	InitialYToKill = 250;
	initialXWall = lerp(initialXWall, 320, factorInitialXWall);
	
	enemy = ds_map_find_value(global.bestiaryList, selectedBest);
	
	if (alphaInfo<=1)
	{
		alphaInfo+=0.1
	}
	
	if (enemy.unlocked = 0) || (enemy.killsNum < 1)
	{
		BestiaryDrawUnknown();
		//BestiaryDrawUnlocked();
		//BestiaryDrawLocked();
	}
	else if (enemy.killsNum >= 1) && (enemy.killsNum < enemy.killsToUnlock)
	{
		//BestiaryDrawUnlocked();
		BestiaryDrawLocked();
	}
	else if (enemy.unlocked) && (enemy.killsNum > enemy.killsToUnlock)
	{
		BestiaryDrawUnlocked();
		
	}
}