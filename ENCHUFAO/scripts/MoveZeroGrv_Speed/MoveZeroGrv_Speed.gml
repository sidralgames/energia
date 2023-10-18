// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveZeroGrv()
{
	if (tile_meeting(x+_hpush,y,"Tiles"))
	{
	    _hpush = -_hpush*bnc;
	} 
	
	if (tile_meeting(x,y+_vpush,"Tiles"))
	{
	    _vpush = -_vpush*bnc;
	}
	
	x+=_hpush * global.relativeSpeed;
	y+=_vpush * global.relativeSpeed;
}
	


