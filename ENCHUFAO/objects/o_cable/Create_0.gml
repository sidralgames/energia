/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties

chipList = ds_map_create();

//---- CONNECTIONS ----//
standardConnection = false;
strandedShipConnection = false;
bossWormConnection = false;
capsuleConnection = false;
superCapsuleConnection = false;

//---- CHIPS ----//
initialChipIndex = 4;
chipJustGrabbed = false;


contUnplugging = 0;
deattached = false;
_alpha = 1;

canCollide = false;
fric = 0.84;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = c_white;
// Create verlet groups
_segments = (5 * global.cableStat)+3;

if (global.cableStat>6 && room = Sala_Inicio)
{
	_widhtCable = 5
}
else
{
	_widhtCable = 2	
}
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, _widhtCable, 3, _segments, 2, 100,canCollide);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_playerShip)
rope1.vertexAttachTo(first, inst);


plugged = false;
pluggedToStrandedShip = false;

		//// Attach an object to its last vertex
instTope = instance_create_layer(x,y,"Player", o_charger);
instTope.depth = depth-1;
rope1.vertexAttachObject(antelast, instTope, vertexAttachmentType.both);


alarm[0] = random_range(10,95);

