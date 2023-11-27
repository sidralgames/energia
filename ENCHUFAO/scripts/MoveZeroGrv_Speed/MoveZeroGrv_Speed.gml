// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveZeroGrv_Speed()
{
	if (tile_meeting(x+hspeed,y,"Tiles"))
	{
	    hspeed = -hspeed*bnc;
	} 
	
	if (tile_meeting(x,y+vspeed,"Tiles"))
	{
	    vspeed = -vspeed*bnc;
	}
	
	//x+=hspeed * global.relativeSpeed;
	//y+=vspeed * global.relativeSpeed;
}
	


