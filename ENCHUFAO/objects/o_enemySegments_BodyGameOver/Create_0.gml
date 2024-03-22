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
_sprite = s_enemySegmets_segment;
_segments = 6;
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;
_color = c_white;

// Create a new rope
//rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object
 alarm[1] = 3;
inst = instance_nearest(x,y,o_enemySegmentsGameOver)

rope1.vertexAttachTo(first, inst);



if instance_exists(o_gameOver)
{
	rope1.vertexChangeData(first, x-40,y-20,,false)
	rope1.vertexChangeData(last, x-100,y-20,,false)
}



//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = 30;

