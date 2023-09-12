/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties

canCollide = false;
fric = 0.85;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = c_white;
inst = instance_nearest(x,y, o_chargerStrandedShip);

instTope = instance_nearest(x,y,o_strandedShip)

// Create verlet groups
_segments = 5 * instTope.strandedShipCableStat;
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object

rope1.vertexAttachTo(first, inst);


plugged = false;

		//// Attach an object to its last vertex

instTope.myCharger = inst;
instTope.depth = depth-1;
rope1.vertexAttachTo(last, instTope);

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

