/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh

_hp --;


if (global.unPlugging) || (global.plugging)
{
	unplugging = true;
}

if (unplugging)
{

	with(o_cable)
	{
		if instance_exists(other)
		{
			
			rope1.vertexDeAttachTo(other.chipNum);
		}
	}
	
	with(o_cable)
	{
		if instance_exists(other)
		{
			
			rope1.vertexAttachObject(other.chipNum, other, vertexAttachmentType.both);
			other.unplugging = false;
		}
	}
	
}


if (_hp <= 5) && (deattached = false)
{
	global.laserDamage -= 0.3;
	global.laserWidth -=2;
	
	global.chipsNumber -= 1;
	global.chipsLaserTot -=1;
	
	with(o_cable)
	{
		if (other._hp <=5)
		{
			rope1.vertexDeAttachTo(other.chipNum);
		}
	}

	deattached = true;

}

if (_hp <= 0)
{
	instance_destroy()
}







