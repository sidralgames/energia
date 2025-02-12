// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MovePlayer()
{
	
	if (global.energy <= 0)
	{
		bnc = strandedBnc;
	}
	else
	{
		bnc = normalBnc;	
	}
	
	if (tile_meeting(x+_hpush*1.25,y,"Tiles")) //|| place_meeting(x+_hpush*1.25,y,o_wallCol)
	{
		gamepad_set_vibration(0,0.3,0.3)
		alarm[4] = 4;
	    _hpush = -_hpush*bnc;
		alarm[3] = 4;
		contWallBump = 10;
		global.playerBumps+=1;
		global.totalBumps+=1;
		bumpsAchievement = false;
	}
	
	if (tile_meeting(x,y+_vpush*1.25,"Tiles")) //|| place_meeting(x,y+_vpush*1.25,o_wallCol)
	{
		gamepad_set_vibration(0,0.3,0.3)
		alarm[4] = 4;
	    _vpush = -_vpush*bnc;
		alarm[3] = 4;
		contWallBump = 10;
		global.playerBumps+=1;
		global.totalBumps+=1;
		bumpsAchievement = false;
	}

	if (global.spriteShip = splayer_Purple)
	{
		x+=_hpush * min(1, (global.relativeSpeed+global.relativeFastSpeed));
		y+=_vpush * min(1, (global.relativeSpeed+global.relativeFastSpeed));
	}
	else
	{
		x+=_hpush * global.relativeSpeed;
		y+=_vpush * global.relativeSpeed;
	}

}
	


