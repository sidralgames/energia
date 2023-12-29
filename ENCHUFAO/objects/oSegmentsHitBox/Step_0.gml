/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_angle = image_angle;

if (contDiscount > 0)
{
	contDiscount --;
}
if (contDiscount <= 0)
{
	if (!discounted)
	{
		discounted = true;
		global.totalEnemiesOnLevel-=1;
	}
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
		if instance_exists(worm)
		{
			worm._hp-=1;
		}
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
		if instance_exists(worm)
		{
			worm._hp-=1;
		}
	}
}


if (hurts = false)
{
	contHurt--;
	if (contHurt <=0)
	{
		hurts = true;
	}
}


if !instance_exists(worm)
{
	global.XPpoints +=5;
	
	explo = instance_create(x,y,o_explo2);
	explo.image_xscale = 0.5;
	explo.image_yscale = 0.5;
	
	if instance_exists(explo)
	{
		instance_destroy();
	}
}

if (die)
{
	instance_destroy()
}
