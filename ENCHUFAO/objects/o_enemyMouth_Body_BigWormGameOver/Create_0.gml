/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
mega = false;
canCollide = false;
fric = 0.6;
grv = 0.0;
verletSystem1 = new verletSystem(fric, grv);
off = 0;
_color = c_white;

alarm[1] = 2;
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
rope1.vertexAttachTo(first, inst, 0);
if instance_exists(o_gameOver)
{
	rope1.vertexAttachTo(first, inst, 20);
	
}

plugged = false;
rope1.vertexChangeData(last, inst.x-(220*inst.xscale),inst.y,,false)

changed = false
//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);
osc = 1
min_ = 160;
max_ = 200;
dire = 180;
alarm[0] = random_range(10,95);

