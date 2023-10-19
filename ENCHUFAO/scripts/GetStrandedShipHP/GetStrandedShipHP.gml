// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetStrandedShipHP()
{
	//-----------------MOVE IT TO NEXT ROOM----------------------//
		if (sprite = splayer)
		{
			global.strandedShipGreen = true;
			global.strandedShipGreenHP = hp;
		}
		else if (sprite = splayer_Blue)
		{
			global.strandedShipBlue = true;
			global.strandedShipBlueHP = hp;
		}
		else if (sprite = splayer_Dark)
		{
			global.strandedShipDark = true;
			global.strandedShipDarkHP = hp;
		}
		else if (sprite = splayer_Red)
		{
			global.strandedShipRed = true;
			global.strandedShipRedHP = hp;
		}
		else if (sprite = splayer_Purple)
		{
			global.strandedShipPurple = true;
			global.strandedShipPurpleHP = hp;
		}
		else if (sprite = splayer_mp3)
		{
			global.strandedShipMP3 = true;
			global.strandedShipMP3HP = hp;
		}
}