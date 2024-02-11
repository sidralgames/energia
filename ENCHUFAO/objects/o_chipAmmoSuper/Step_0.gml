/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh
if (tipoSet = false)
{
	switch(tipo)
	{
		case "FireRate":
		{
			global.temporaryFireRate_Factor += 4;
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

if (global.unPlugging)
{
	unplugging = true;

}

if (unplugging)
{
	with(o_cable)
	{
		if instance_exists(other)
		{
			rope1.vertexDeAttachTo(other.chipNum)
			rope1.vertexAttachObject(other.chipNum, other, vertexAttachmentType.both);
		}
	}
	
	unplugging = false;
}

if (_hp <= 1) && (deattached = false)
{
	with(o_cable)
	{
		rope1.vertexDeAttachTo(other.chipNum);
	}
	
	switch(tipo)
	{
		case "FireRate":
		{
			global.temporaryFireRate_Factor -= 4;
			global.chipsNumber -= 1;
			global.chipsAmmoRateTot -=1;
		
		}break;
	
		case "SuperShot":
		{
			global.superShot -= 0.3;
			global.chipsNumber -= 1;
			global.chipsAmmoSuperTot -=1;
		
		}break;
	}

	deattached = true;

}

if (_hp <= 0)
{
	instance_destroy()
}






