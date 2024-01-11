/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
inScreen = 0;

mega = false;
canCollide = false;
fric = 1;
grv = 0.0;
verletSystem1 = new verletSystem(fric, grv);
off = 0;


_sprite = s_enemyMouth_Body;
inst = instance_nearest(x,y,o_enemy_Mouth)
if (inst.fromBullet)
{
	_segments = irandom_range(3,5);
}
else
{
	_segments = choose(irandom_range(4,6),irandom_range(4,6),irandom_range(4,10));
}

rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);


// Create a new rope
//rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object

rope1.vertexAttachTo(first, inst);

instAchor = instance_nearest(x,y,o_mouthAnchor)
rope1.vertexAttachTo(last, instAchor);
//depth = layer_get_depth("Enemies");

plugged = false;


//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

