/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
mega = false;
canCollide = false;
fric = 0.9;
grv = 0.0;
verletSystem1 = new verletSystem(fric, grv);
off = 0;

fixing = false;


counting=false;
countingNInitial=20
countingN=countingNInitial;
_sprite = s_BigWorm_Body;
_segments = 8;
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;

// Create a new rope
//rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_BigWormGameOver)
rope1.vertexAttachTo(first, inst, 20);
rope1.vertexChangeData(last, inst.x-100,,false)

instAchor = instance_create_layer(x,y,"PauseHUE_Sub",o_chargerMouth)
rope1.vertexAttachObject(last, instAchor,vertexAttachmentType.both);





plugged = false;

force = verletSystem1.addForceField(x-400, y-80, x+50, y+260,180, 0.8, false);

//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);
osc = 1
min_ = 160;
max_ = 200;
dire = 180;
alarm[0] = random_range(10,95);

