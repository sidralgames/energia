/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties

canCollide = false;
fric = 0.85;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = c_white;
// Create verlet groups
inst = instance_nearest(x,y,o_strandedShip)
_segments = 5 * inst.strandedShipCableStat;
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object

rope1.vertexAttachTo(first, inst);


plugged = false;

		//// Attach an object to its last vertex
instTope = instance_create_layer(x,y,"Player", o_chargerStrandedShip);
inst.myCharger = instTope;
instTope.depth = depth-1;
rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);

if instance_exists(o_playerShip)
{
	if (global.pluggingStrandedShipToEnchufe)
	{
		global.pluggingStrandedShipToEnchufe = false;
		enchufe = instance_nearest(o_playerShip.x,o_playerShip.y,o_enchufe_Father);
	
		if instance_exists(enchufe)
		{

			rope1.vertexAttachTo(last, enchufe);
		}
	}
}

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);
