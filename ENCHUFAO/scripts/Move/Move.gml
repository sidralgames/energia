// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Move()
{
	if (place_meeting(x+(_hpush*1.5),y,o_wall))
	{
	    _hpush = -_hpush*bnc;
	}
	x=x+_hpush;

	// V collision
	if (place_meeting(x,y+(_vpush*1.5),o_wall))
	{
	    _vpush = -_vpush*bnc;
    
	}
	y =y + _vpush;
}

