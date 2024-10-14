// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShip_ConnectedShip()
{
	speed = 0;
	path_end();
	
	DoCablePhysics();
	
	if (tile_meeting(x+_hpush,y,"Tiles"))
	{
	    _hpush = -_hpush*bnc;
	} 
	
	if (tile_meeting(x,y+_vpush,"Tiles"))
	{
	    _vpush = -_vpush*bnc;
	}
	
	
	
	//----- GO TO CONNECTED ENCHUFE STATE----//
	if (connectedToEnchufe)
	{
		state = STRANDEDSHIPSTATE.CONNECTEDENCHUFE;
	}
}