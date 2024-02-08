// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrandedShipIsCalled()
{
	if (set = false)
	{
		if (y > __view_get( e__VW.YView, 0 )+180)
		{
			dirVspeed = random_range(3,4);
		}
		else
		{
			dirVspeed = -random_range(3,4);
		}
		
		hspeed = dirHspeed;
		image_blend = c_ltgray;
		vspeedTurn=0;
		turnDistanceD = random_range(530,550);
		turnDistanceI = random_range(90,110);
		strandedShipCableStat = random_range(1.25,2.25);
		maxDistance = strandedShipCableStat *35;
		cable = instance_create_layer(x,y,"Cable", o_cableStrandedShip);
		set = true;
		
	}
	
	_angle = direction;
	hspeed = dirHspeed * global.relativeSpeed;
	vspeed = vspeedTurn * global.relativeSpeed;
	dirHspeed = lerp(dirHspeed, 3*sign(hspeed), 0.005);
	
	contPart--;
	
	if (contPart <=0)
	{
		part_particles_create(global.naveP_sys, x,y, global.naveP, 1);
		contPart = 5;
	}
	
	if (hspeed > 0)
	{
		if (x > __view_get( e__VW.XView, 0 )+turnDistanceD)
		{
			vspeedTurn = lerp(vspeedTurn, dirVspeed, 0.08);
			dirHspeed = lerp(dirHspeed, 2*sign(hspeed), 0.05);
		}
		else
		{
			StrandedShipShotCalled();
			StrandedShipBombCalled();
		}
		if (x > __view_get( e__VW.XView, 0 )+860)
		{
			instance_destroy(cable.instTope);
			instance_destroy(cable);	
			instance_destroy();
		}
	}
	else
	{
		if (x < __view_get( e__VW.XView, 0 )+turnDistanceI)
		{
			vspeedTurn = lerp(vspeedTurn, dirVspeed, 0.08);	
			dirHspeed = lerp(dirHspeed, 2*sign(hspeed), 0.05);
		}
		else
		{
			StrandedShipShotCalled();
			StrandedShipBombCalled();
		}
		
		if (x < __view_get( e__VW.XView, 0 )-200)
		{
			instance_destroy(cable.instTope);
			instance_destroy(cable);	
			instance_destroy();
		}
	}
}