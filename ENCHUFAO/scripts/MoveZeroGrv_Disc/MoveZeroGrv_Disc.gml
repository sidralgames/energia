// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MoveZeroGrv_Disc()
{
	if (tile_meeting(x+hspeed,y,"Tiles"))
	{
		hspeed = -hspeed*bnc;
		if (alarm[0]<=0)
		{
			alarm[0] = 10;
			bounces+=1;
		}
	}
	
	if (tile_meeting(x,y+vspeed,"Tiles"))
	{
		vspeed = -vspeed*bnc;
		
		if (alarm[0]<=0)
		{
			alarm[0] = 10;
			bounces+=1;
		}
	}
	
	//x+=hspeed * global.relativeSpeed;
	//y+=vspeed * global.relativeSpeed;
}
	


