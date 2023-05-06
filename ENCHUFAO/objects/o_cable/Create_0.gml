/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
fric = random_range(0.85,0.9)
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;

// Create verlet groups
_segments = 20
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, c_white, 2, 3, _segments, 3, 100);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_playerShip)
rope1.vertexAttachTo(first, inst);




if (o_playerShip.createdFromUnplugged)
{
	rope1.vertexChangeData(last, global.xToPlug, global.yToPlug);
	//// Attach an object to its last vertex
	instTope = instance_create(global.xToPlug, global.yToPlug, o_charger);
	rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);
}
else
{
		//// Attach an object to its last vertex
	instTope = instance_create(x, y, o_charger);
	rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);
}

alarm[0] = random_range(10,95);

