/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

xConnectionPos = x;
yConnectionPos = y;

if (charge < maxCharge +10)
{
	if (image_index >= 18)
	{
		image_index = 16	
	}
}

if (place_meeting(x+_hpush*1.2,y,o_enchufe_Father))
{
    _hpush = -_hpush*bnc;

}
if (place_meeting(x,y+_vpush*1.2,o_enchufe_Father))
{
    _vpush = -_vpush*bnc;
	
}

Move();

image_angle += max(0.05*sign(_hpush), 2*(abs(_hpush)),0.05*sign(_vpush), 2*(abs(_vpush))*global.relativeSpeed);
_angle = image_angle;

if (charge >= maxCharge)
{
	if (soundDie = false)
	{
		soundDie = true;
		audio_play_sound_on(global.audioEmitter,snd_diePeta, false, 50)
	}
	image_speed = -imageSpeed*1.5;
	
	if (playerUnplugged == false)
	{
		UnplugPETA();
		playerUnplugged = true;
	}
	
	if (image_index <=1)
	{
		instance_destroy();	
	}
}

if (dying == true)
{
	if (soundDie = false)
	{
		soundDie = true;
		audio_play_sound_on(global.audioEmitter,snd_diePeta, false, 50)
	}
	image_speed = -imageSpeed*1.5;
	if (image_index <=1)
	{
		instance_destroy();	
	}
	
}
if (alarm[2] > 0)
{
	_hpush = lerp(_hpush, 0, 0.01);
	_vpush = lerp(_vpush, 0, 0.01);
}


_hpush = clamp(_hpush, -1.5, 1.5)
_vpush = clamp(_vpush, -1.5, 1.5)


if tile_meeting(x,y,"Tiles") && (backToTile == true)
{
	contToBeInside ++;
	
	if (contToBeInside > 15)
	{
		
		xToCreate = (x div 32) * CELL_WIDTH + CELL_WIDTH/2;
		yTocreate = (y div 32) * CELL_HEIGHT + CELL_HEIGHT/2;
		
		if (global.wallgrid_[# xToCreate, yTocreate] != FLOOR)
		{
			
			if (enchufeActive) && (playerUnplugged == false)
			{
				UnplugPETA();
				playerUnplugged = true;
			}
			
			switch (PETAType)
			{
				case isPETA:
				{
					petaTile = instance_create_layer(xToCreate,yTocreate,"ObjectsTiles", o_PETAinTile);
					petaTile.sprite_index = s_petaInTile;
		
				}break;
		
				case isPETAHP:
				{
					petaTile = instance_create_layer(xToCreate,yTocreate,"ObjectsTiles", o_PETAinTile);
					petaTile.sprite_index = s_petaInTileHP;
			
				}break;
		
				case isPETAAmmo:
				{
					petaTile = instance_create_layer(xToCreate,yTocreate,"ObjectsTiles", o_PETAinTile);
					petaTile.sprite_index = s_petaInTileAmmo;
			
				}break;
		
				case isPETALaser:
				{
					petaTile = instance_create_layer(xToCreate,yTocreate,"ObjectsTiles", o_PETAinTile);
					petaTile.wasOutBefore = true;
					petaTile.sprite_index = s_petaInTileLaser;
			
				}break;
		
				case isPETAAll:
				{
					petaTile = instance_create_layer(xToCreate,yTocreate,"ObjectsTiles", o_PETAinTile);
					petaTile.sprite_index = s_petaALLInTile;
				}break;
			}
	
			instance_destroy();
		}
	}
}
else
{
	contToBeInside = 0;	
}




