/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh
if (tipoSet = false)
{
	switch(tipo)
	{
		case "FireRate":
		{
			sprite_index = s_chipAmmoRate;
			global.temporaryFireRate_Factor += 2;
			global.chipsAmmoRateTot +=1;
		
		}break;
	
		case "SuperShot":
		{
			sprite_index = s_chipAmmoSuper;
			global.superShot += 0.3;
			global.chipsAmmoSuperTot +=1;
		
		}break;
	}
	
	tipoSet = true;
}

event_inherited();






