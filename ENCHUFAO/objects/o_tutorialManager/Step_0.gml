/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if (global.level = -1)
{
	width_ = room_width div CELL_WIDTH;
	height_ = room_height div CELL_HEIGHT;
	
	if (pluggedInEnergyTut = true) && (ammoCreated = false)
	{
		for ( var yy = 0; yy < height_; yy++) 
		{
		    for (var xx = 0; xx < width_; xx++) 
			{
			    if (global.wallgrid_[# xx, yy] == FLOOR) 
				{
					 exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				     eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
					if (irandom(oddsEnchufeAmmo) == oddsEnchufeAmmo) && (ammoCreated = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father)
		
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80) &&
						(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) >300) 
						{
							instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Ammo); 
							ammoCreated = true;
						}
					}
				}
			}
		}
	
	}

	if (pluggedInAmmoTut = true) && (HPcreated = false)
	{
		for ( var yy = 0; yy < height_; yy++) 
		{
		    for (var xx = 0; xx < width_; xx++) 
			{
			    if (global.wallgrid_[# xx, yy] == FLOOR) 
				{
					 exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				     eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
			if (irandom(oddsEnchufeHP) == oddsEnchufeHP) && (HPcreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father);
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) >300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Hp); 
					HPcreated = true;
				}
			}
				}
			}
		}
	
	}

	if (pluggedInHPTut = true) && (laserCreated = false)
	{
		for ( var yy = 0; yy < height_; yy++) 
		{
		    for (var xx = 0; xx < width_; xx++) 
			{
			    if (global.wallgrid_[# xx, yy] == FLOOR) 
				{
					 exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				     eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
			if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (laserCreated = false)
			{
				nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father);
				if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80) &&
				(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) > 300)
				{
					instance_create_layer(exM,eyM,"Enchufes",o_enchufe_Laser); 
					laserCreated = true;
				}
			}
				}
			}
		}
	
	}
}

if (global.level = -2)
{
	if (contFirstEnchufe >= 0)
	{
		contFirstEnchufe --;
	}
	if (global.energy > 0)
	{
		pluggedInEnergyTut = true;
	}
	if (global.energy >= 80) && (enchufeVisible = false) && (contFirstEnchufe <= 0) && (o_playerShip.plugged = true)
	{
		enchufeVisible = true;
		o_enchufe_Final.isVisible = true;
		o_enchufe_Final.abierto = true;
	}
}

if (global.level >= -1)
{
	width_ = room_width div CELL_WIDTH;
	height_ = room_height div CELL_HEIGHT;
	
	if (pluggedInHPTut = true) && (breachCreated = false)
	{
		for ( var yy = 0; yy < height_; yy++) 
		{
		    for (var xx = 0; xx < width_; xx++) 
			{
			    if (global.wallgrid_[# xx, yy] == FLOOR) 
				{
					 exM = xx * CELL_WIDTH+CELL_WIDTH/2;
				     eyM = yy * CELL_HEIGHT+CELL_HEIGHT/2;
		
					if (irandom(oddsEnchufeLaser) == oddsEnchufeLaser) && (breachCreated = false)
					{
						nextEnchufe = instance_nearest(exM, eyM, o_enchufe_Father);
						if (point_distance(exM, eyM, nextEnchufe.x, nextEnchufe.y) > 80) &&
						(point_distance(exM, eyM, o_playerShip.x, o_playerShip.y) < 350)
						{
							breachObj = instance_create_layer(exM, eyM, "Breach", o_breach);
							breachObj.hp = 1000;
							breachCreated = true;
							o_main.breachTutorial = true;
							if (global.level < 0)
							{
								canAssist = true;
								contToAssist = 100;
							}
						}
					}
				}
			}
		}
	}
}


