/// @description Insert description here
// You can write your code in this editor

if (!tile_meeting(x,y,"Tiles"))
{
	
	if (sprite_index = s_petaInTile)
	{
		peta = o_enchufePETA;	
	}
		
	if (sprite_index = s_petaInTileAmmo)
	{
		peta = o_enchufePETAAmmo;	
	}
		
	if (sprite_index = s_petaInTileHP)
	{
		peta = o_enchufePETAHP;	
	}
		
	if (sprite_index = s_petaInTileLaser) 
	{
		peta = o_enchufePETALaser;	
	}
	
	if (sprite_index = s_petaALLInTile) 
	{
		peta = o_enchufePETAAll;	
	}
	
	instance_destroy();
	instance_create_layer(x,y,"Enchufes",peta);
}



