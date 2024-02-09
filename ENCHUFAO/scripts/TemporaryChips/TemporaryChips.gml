// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function TemporaryChips()
{
	
	//------- FIRE RATE CHIP ------//
	if (global.temporaryFireRate >= 0)
	{
		global.temporaryFireRate --;
	}

	if (global.temporaryFireRate <= 0)
	{
		global.temporaryFireRate_Factor = 0;
	}


	//------- SUPER SHOT CHIP ------//
	if (global.temporarySuperShot > 0)
	{
		global.temporarySuperShot --;
	}

	if (global.temporarySuperShot <= 0)
	{
		global.superShot = global.superShotInitial;
	}

	global.superShot = clamp(global.superShot, 1, 2);

}