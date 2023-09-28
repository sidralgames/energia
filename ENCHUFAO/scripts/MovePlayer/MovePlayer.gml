// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MovePlayer()
{
	
	
if (tile_meeting(x+_hpush*1.25,y,"Tiles"))
{
    _hpush = -_hpush*bnc;
	alarm[3] = 5;
	global.playerBumps+=1;
	global.totalBumps+=1;
	bumpsAchievement = false;
}
if (tile_meeting(x,y+_vpush*1.25,"Tiles"))
{
    _vpush = -_vpush*bnc;
	alarm[3] = 5;
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
	


