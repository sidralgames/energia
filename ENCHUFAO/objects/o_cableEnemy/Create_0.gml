/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
fric = 0.85;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;
cableColor = make_color_rgb(228,59, 68) ;
// Create verlet groups
_segments = 12
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_enemyEnchufeMisil)
rope1.vertexAttachTo(first, inst);


plugged = false;

		//// Attach an object to its last vertex
instTope = instance_create_layer(x,y,"Player", o_chargerEnemy);
instTope.depth = depth-1;
instTope.enemy = inst;
rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

