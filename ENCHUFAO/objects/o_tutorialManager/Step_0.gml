/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (pluggedInEnergyTut = true) && (ammoCreated = false)
{
	xx = irandom(30);
	yy = irandom(30);
	if (global.wallgrid_[# xx, yy] == FLOOR) 
	{	
		var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
		var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
		if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (ammoCreated = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 50) &&
			(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
			{
				instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
				ammoCreated = true;
			}
		}
	}
	
}

if (pluggedInAmmoTut = true) && (HPcreated = false)
{
	xx = irandom(30);
	yy = irandom(30);
	if (global.wallgrid_[# xx, yy] == FLOOR) 
	{	
		var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
		var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
		if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (HPcreated = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 50) &&
			(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
			{
				instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
				HPcreated = true;
			}
		}
	}
	
}

if (pluggedInHPTut = true) && (laserCreated = false)
{
	xx = irandom(30);
	yy = irandom(30);
	if (global.wallgrid_[# xx, yy] == FLOOR) 
	{	
		var exM = xx * CELL_WIDTH+CELL_WIDTH/2;
		var eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
		if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (laserCreated = false)
		{
			nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
			if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 50) &&
			(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 500)
			{
				instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
				laserCreated = true;
			}
		}
	}
	
}