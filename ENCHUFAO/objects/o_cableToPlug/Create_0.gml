/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties

canCollide = false;
fric = 0.85;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = c_white;
// Create verlet groups
inst = instance_nearest(x,y,o_radio)
_segments = 10
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 1, 100, canCollide);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object

rope1.vertexAttachTo(first, inst);


plugged = false;

		//// Attach an object to its last vertex
instTope = instance_create_layer(x,y,"Cable", o_chargerToPlug);
inst.myCharger = instTope;

rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);



//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);
