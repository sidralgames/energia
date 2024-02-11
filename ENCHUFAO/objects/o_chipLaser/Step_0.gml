/// @description Inserte aquí la descripción
// Puede escribir su código en este editoh

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
	global.laserDamage -= 0.3;
	global.laserWidth -=2;
	
	global.chipsNumber -= 1;
	global.chipsLaserTot -=1;
	
	with(o_cable)
	{
		
		rope1.vertexDeAttachTo(other.chipNum);
	}

	deattached = true;

}

if (_hp <= 0)
{
	instance_destroy()
}







