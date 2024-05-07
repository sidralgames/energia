/// @description Insert description here
// You can write your code in this editor
Controls_Input();

TemporaryChips();

if (global.totalEnemiesOnLevel < 0)
{
	global.totalEnemiesOnLevel = 0;
}
///-------------ACHIEVEMENTS-----////

if (global.enemiesKilledTotalAch >= 500) && (global.ach500Enemies = 0)
{
	global.ach500Enemies = 1;
}



if (global.ammoMod <= 0)
{
	global.ammoMod = 10;
}

if (global.shields < 0)
{
	global.shields = 0
}


if (global.bulletsGhostIsOn = true)
{
	global.alhpaGhost = 0.8;
}
else
{
	global.alhpaGhost = 1;
}
if instance_exists(o_playerShip) //&& (room != Sala_Inicio)
{
	if (global.energy >= global.energyMax)
	{
		global.energy = global.energyMax;
	}
	
	if (o_playerShip.plugged)
	{
		if (o_playerShip.pluggedInEnchufeBroken)
		{
			PlayerShipLoseEnergy();
		}
		else
		{
			PlayerPluggedMainEnchufes();
		}
			
	}
	else if (o_playerShip.plugged == false)
	{
		pluggedInEnchufeBroken = false;
		full = false;
		PlayerShipLoseEnergy();
	}
}

part_type_sprite(global.balaP,global.bulletPart_sprite,true,1,false)


if (key_select) && (ending = false)
{
	instance_activate_all();
	ending = true;
	endTimer = 10;
}

if (endTimer >= 0)  && (ending = true)
{
	endTimer --;
	var lay_id = layer_get_id("Tiles");
	var tile_id = layer_tilemap_get_id(lay_id);
	
	if (layer_tilemap_exists(lay_id, tile_id))
	{
	    layer_tilemap_destroy(tile_id);
	}
}

if (endTimer <= 0) && (ending = true)
{
	FreeMemory();
	
	
	instance_destroy(o_pause);
	instance_destroy(o_gridRoom);
	
	instance_destroy(all);
	
	SaveGame();

	room_goto(Sala_Inicio);
}



