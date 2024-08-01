/// @description Insert description here
// You can write your code in this editor
_angle = 0;
image = choose(0,1,2,3,4);
wasOutBefore = false;

if (wasOutBefore = false)
{
	if (global.allPETAisMulti)
	{
		sprite_index = s_petaALLInTile;
		peta = o_enchufePETAAll;
	}
	else
	{
		sprite_index = choose(s_petaInTile, s_petaInTileAmmo,s_petaInTileHP, s_petaInTileLaser)

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
			if (!wasOutBefore)
			{
				peta = choose(o_enchufePETALaser, o_enchufeBombs);	
			}
			else
			{
				peta = o_enchufePETALaser;	
			}
		}
	}
}



if collision_circle(x,y,70, o_objectIntile, false, true) 
{
	instance_destroy();	
}




