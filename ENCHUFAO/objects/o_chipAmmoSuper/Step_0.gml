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

_hp --;


//if (_hp <= 5) && (deattached = false)
//{
//	with(o_cable)
//	{
//		rope1.vertexDeAttachObject(other.chipNum);
//	}
	
//	switch(tipo)
//	{
//		case "FireRate":
//		{
//			global.temporaryFireRate_Factor -= 4;
//			global.chipsNumber -= 1;
//			global.chipsAmmoRateTot -=1;
		
//		}break;
	
//		case "SuperShot":
//		{
//			global.superShot -= 0.3;
//			global.chipsNumber -= 1;
//			global.chipsAmmoSuperTot -=1;
		
//		}break;
//	}

//	deattached = true;

//}

//if (_hp <= 0)
//{
//	instance_destroy()
//}







