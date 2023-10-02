/// @description Insert description here
// You can write your code in this editor
_angle = 0;
image = choose(0,1,2,3,4)
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
	peta = choose(o_enchufePETALaser, o_enchufeBombs);	
}
if collision_circle(x,y,100, o_PETAinTile, false, true)
{
	instance_destroy();	
}




