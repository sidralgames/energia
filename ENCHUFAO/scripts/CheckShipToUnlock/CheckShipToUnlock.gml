// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckShipToUnlock()
{
	if (sprite = splayer_Blue)
	{
		global.shipBlueUnlocked = 1;
	}
	else if (sprite = splayer_Red)
	{
		global.shipRedUnlocked = 1;
	}
	else if (sprite = splayer_Dark)
	{
		global.shipDarkUnlocked = 1;
	}
	else if (sprite = splayer_Purple)
	{
		global.shipPurpleUnlocked = 1;
	}
	else if (sprite = splayer_mp3)
	{
		global.shipMP3Unlocked = 1;
	}
	
	SaveGame();
}