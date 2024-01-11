/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
mega = false;
canCollide = false;
fric = 0.4;
grv = 0.0;
verletSystem1 = new verletSystem(fric, grv);
off = 0;

fixing = false;



counting=false;
countingNInitial=20
countingN=countingNInitial;
_sprite = s_FakeBossWorm_Body;
_segments = 12;
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;

// Create a new rope
//rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_FakeBoss_Worm)
rope1.vertexAttachTo(first, inst);

instAchor = instance_create_layer(x,y,"Back",o_FakechargerBossWorm)
rope1.vertexAttachObject(last, instAchor,vertexAttachmentType.both);


plugged = false;


//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

