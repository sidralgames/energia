/// @description Inserte aquí la descripción
// Puede escribir su código en este editor



// Inherit the parent event
event_inherited();
xConnectionPos = x-lengthdir_x(30,image_angle);
yConnectionPos = y-lengthdir_y(30,image_angle);
if (charge>=200) && (changedMetal = false)
{
	changedMetal = true;
	Metal1.isVisible = false;
	Metal2.isVisible = false;
	MyMetal.isVisible = false;
}

if (changedMetal = true)
{
	depth = layer_get_depth("HUE")
	image_index = 4;
	image_speed = 0;
}


if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}

if (burnFlash >0)
{
	burnFlash-=0.1
}
if (electroFlash >0)
{
	electroFlash-=0.1
}

if (burned = true)
{
	contBurnPart--;
	
	if (contBurnPart <= 0)
	{
		contBurnPart = random_range(contBurnPartMax-1,contBurnPartMax+2) ;
		part_particles_create(global.partSmoke_sys, x+random_range(10,-10), y+random_range(10,-10), global.partSmoke , 1);
	}
	contBurnedTotal --;
	if (contBurnedTotal <= 0)
	{
		contBurnedTotal = contBurnedTotalMax;
		burned = false;
	}
	contBurned --;
	if (contBurned <= 0)
	{
		contBurned = contBurnedMax;
		burnFlash = 1;
	}
}

if (electrocutated = true)
{
	contElectroPart--;
	
	if (contElectroPart <= 0)
	{
		contElectroPart = random_range(1,3) ;
		part_particles_create(global.overCharged_sys, x+random_range(15,-15), y+random_range(15,-15), global.overChargedPart , 2);
	}
	contElectroTotal --;
	if (contElectroTotal <= 0)
	{
		contElectroTotal = contBurnedTotalMax;
		electrocutated = false;
	}
	contElectro --;
	if (contElectro <= 0)
	{
		contElectro = contBurnedMax;
		electroFlash = 1;
	}
}

if instance_exists(o_BossWorm_Mouth)
{
	if (!instance_exists(o_BossWorm_Body)) || (die)
	{
		instance_destroy();
	}
}
else
{
	instance_destroy();
}