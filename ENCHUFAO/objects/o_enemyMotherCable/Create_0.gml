/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
canCollide = false;
fric = 0.85;
verletSystem1 = new verletSystem(fric, 0.0);
off = 0;

gray = make_color_rgb(192,203,220);
cableColor = gray;

// Create verlet groups
_segments = 12
// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, s_tentacle, _segments, 1, 10);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_enemyMothership)
rope1.vertexAttachTo(first, inst);


plugged = false;
battery = choose(o_smartBulletsPickUp, o_BouncingBulletsPickUp, o_piercingBulletsPickUp,
					o_ExploBulletsPickUp, o_PushingBulletsPickUp, o_SplitBulletsPickUp, o_BurningBulletsPickUp, o_ElectroBulletsPickUp)
		//// Attach an object to its last vertex
instTope = instance_create_layer(x,y,"Enemies", battery);
instTope.inEnemy = true;
instTope.depth = depth-1;
instTope.enemy = inst;
rope1.vertexAttachObject(last, instTope, vertexAttachmentType.both);

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

