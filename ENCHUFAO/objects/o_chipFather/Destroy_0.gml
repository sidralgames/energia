/// @description Inserte aquí la descripción
// Puede escribir su código en este editor


//global.chipVertexDead = chipVertex;

global.chipPosition -= 1;

if instance_exists(o_chipLaser)
{

	with(o_chipLaser)
	{
		alarm[0] = 1
		changeVertex = true;
	}
}

if instance_exists(o_chipSmart)
{

	with(o_chipSmart)
	{
		alarm[0] = 1
		changeVertex = true;
	}
}

if instance_exists(o_chipAmmoSuper)
{
	with(o_chipAmmoSuper)
	{
		alarm[0] = 1
		changeVertex = true;
	}
}

if instance_exists(o_chipRepair)
{
	with(o_chipRepair)
	{
		alarm[0] = 1
		changeVertex = true;
	}
}

if instance_exists(o_chipMimic)
{
	with(o_chipMimic)
	{
		alarm[0] = 1
		changeVertex = true;
	}
}


if instance_exists(o_chipShootUp)
{
	with(o_chipShootUp)
	{
		alarm[0] = 1
		changeVertex = true;
	}
}


global.chipsVertex -= 2;





