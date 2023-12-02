/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_angle = image_angle;

if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}


if (hurts = false)
{
	contHurt--;
	if (contHurt <=0)
	{
		hurts = true;
	}
}


if !instance_exists(worm) && (dying = false)
{
	dying = true;
	alarm[0] = random_range(3, 10)
}

if (dying = true) && (alarm[0] <=0)
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
