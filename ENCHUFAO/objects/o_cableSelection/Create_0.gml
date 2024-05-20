/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
fric = random_range(0.85,0.9)
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = c_white;
// Create verlet groups
_segments = 20
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 1, 100);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_fakePlayer)
rope1.vertexAttachTo(first, inst);


plugged = false;

		//// Attach an object to its last vertex
instTope = instance_create(x, y, o_charger);
rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

