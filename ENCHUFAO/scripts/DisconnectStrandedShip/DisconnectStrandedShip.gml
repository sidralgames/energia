// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function DisconnectStrandedShip()
{
	with(myCable)
	{
		enchufe.withStrandedShip = false;
	}
	if instance_exists(o_playerShip)
	{
		o_playerShip.pluggedToStrandedShip=false;
	}
	connectedToEnchufe = false;
	instance_destroy(myCable);
	instance_destroy(myCharger);
	
	cable = instance_create_layer(x, y, "Cable", o_cableStrandedShip);
		
	//myCable.rope1.vertexDeAttachTo(last)
		
	connected = false;
	state = STRANDEDSHIPSTATE.STRANDED;
}