/// @description Insert description here
// You can write your code in this editor

	switch(tipo)
	{
		case "FireRate":
		{
			global.temporaryFireRate_Factor -= 2;
			global.chipsNumber -= 2;
			global.chipsAmmoRateTot -=1;
		
		}break;
	
		case "SuperShot":
		{
			global.superShot -= 0.3;
			global.chipsNumber -= 2;
			global.chipsAmmoSuperTot -=1;
		
		}break;
	}
	






