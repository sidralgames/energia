// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckSmokeToHide()
{
	if (contSmokeArea > 0)
	{
		global.inSmokeArea = true;
		contSmokeArea --;
	
		if (contSmokeArea <= 0)
		{
			global.inSmokeArea = false;
		}
	}
}