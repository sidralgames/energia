/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh
if (tipoSet = false)
{
	switch(tipo)
	{
		case "FireRate":
		{
			global.temporaryFireRate_Factor += 2;
			global.chipsAmmoRateTot +=1;
		
		}break;
	
		case "SuperShot":
		{
			global.superShot += 0.3;
			global.chipsAmmoSuperTot +=1;
		
		}break;
	}
	
	tipoSet = true;
}

event_inherited();






