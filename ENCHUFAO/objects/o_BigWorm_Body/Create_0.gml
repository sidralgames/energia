/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
inScreen = false;
checkInScreen = 0;
resetPositionTime = 180
mega = false;
canCollide = false;
fric = 0.8;
grv = 0.0;
verletSystem1 = new verletSystem(fric, grv);
off = 0;

fixing = false;

counting=false;
countingNInitial=20
countingN=countingNInitial;
_sprite = s_BigWorm_Body
_segments = irandom_range(8,12);
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_BigWorm_Mouth)
rope1.vertexAttachTo(first, inst);

instAchor = instance_create_layer(x,y,"EnemiesHUESub3",o_chargerMouth)
rope1.vertexAttachObject(last, instAchor,vertexAttachmentType.both);

for (var i=1; i<=_segments; i++)
{
	instBody[i] = instance_create_layer(x,y,"EnemiesHUESub4",o_BigWorm_HitBox)
	rope1.vertexAttachObject(i, instBody[i],vertexAttachmentType.both);
	instBody[i].worm = inst;
}

plugged = false;

alarm[0] = random_range(10,95);
alarm[1] = 0;


