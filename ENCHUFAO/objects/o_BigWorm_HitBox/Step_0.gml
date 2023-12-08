/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
_angle = image_angle;

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

inScreen =  (x > __view_get( e__VW.XView, 0 )-50 && x < __view_get( e__VW.XView, 0 )+710) &&
(y > __view_get( e__VW.YView, 0 )-50 && y < __view_get( e__VW.YView, 0 )+410)

if (inScreen)
{
	if contBreak>= 0
	{
		contBreak --;
	}
	if contBreak <=0
	{
		canBreak = true;	
	}
	
	if tile_meeting(x,y,"Tiles") && (canBreak)
	{	
		if (global.wallgrid_[# (x/32), (y/32)] != FLOOR) && (x > 60) && (x < room_width-60)
		&& (y > 60) && (y < room_height-60)
		{
			tilemap_set_at_pixel(_tilemap_id, 0, x, y);
			
			global.changingTiles = true;
			if instance_exists(o_mouthAnchor)
			{
				o_mouthAnchor.alarm[1] = 10;
			}
			velo = random_range(2,2.5);
			global.wallgrid_[# x/32, y/32] = FLOOR
			mp_grid_clear_rectangle(gridRoom1, x-15,y-15,x,y)
			
			met = instance_create_layer(x-lengthdir_x(5, direction),y-lengthdir_y(5, direction),"Meteors", o_meteor)
			if instance_exists(met)
			{
				explo = instance_create(x,y,o_explo3)
				explo.image_xscale = 0.5;
				explo.image_yscale = 0.5;
				explo.image_alpha = 0.8;
				met._hpush = lengthdir_x(velo,random(360))
				met._vpush = lengthdir_y(velo,random(360))
			}
			
			canBreak = false;
			contBreak = 20;
		}
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
