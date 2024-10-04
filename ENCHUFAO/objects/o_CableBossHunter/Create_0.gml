/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties

inScreen = false;
checkInScreen = 0;

resetPositionTime = 100;

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
_segments = 15;
//rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;

// Create a new rope
rope1 = verletGroupCreateRope(verletSystem1, x, y, c_white, 3, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_BossHunter)
//rope1.vertexAttachTo(first, inst);

instAchor = instance_create_layer(x,y,"EnemiesHUESub3",o_chargerEnemyConect)
rope1.vertexAttachObject(last, instAchor,vertexAttachmentType.both);
rope1.vertexChangeData(first,inst.cableXPos,inst.cableYPos);

plugged = false;

alarm[0] = random_range(10,95);
alarm[2] = 0;

