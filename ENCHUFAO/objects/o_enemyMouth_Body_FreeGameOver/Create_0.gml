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

greenO = make_color_rgb(99,199,77)
green = make_color_rgb(108,242,79)
red = make_color_rgb(228,59,68)
purpleO = make_color_rgb(181,80,136)
purple = make_color_rgb(246,117,122)

rojo= make_colour_rgb(228,59,69);
blanco= make_colour_rgb(255,255,255);
blue = make_color_rgb(44,232, 245) ;
orange = make_color_rgb(255,0,68);
oranget = make_color_rgb(247,118,34);
blueO = make_color_rgb(0,149,233)
blueOO = make_color_rgb(18,78,137)
gray = make_color_rgb(192,203,220);
cableColor = gray;
counting=false;
countingNInitial=20
countingN=countingNInitial;
_sprite = s_enemyMouth_Body_Free;
_segments = irandom_range(8,9);
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;

// Create a new rope
//rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_enemyMouth_FreeGameOver)
rope1.vertexAttachTo(first, inst);


instAchor = instance_create_layer(x,y,"PauseHUE_Sub",o_chargerMouth)
rope1.vertexAttachObject(last, instAchor,vertexAttachmentType.both);

rope1.vertexChangeData(first, x-40,y,,false)
rope1.vertexChangeData(last, x-200,y,,false)

for (var i=2; i<=_segments-1; i++)
{
	instBody[i] = instance_create_layer(x,y,"PauseHUE_Sub",oMouthHitBox)
	rope1.vertexAttachObject(i, instBody[i],vertexAttachmentType.both);
	instBody[i].worm = inst;
}

plugged = false;

force = verletSystem1.addForceField(x-200, y-80, x+30, y+260,180, 0.3, false);
//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);
osc = 1
min_ = 160;
max_ = 200;
dire = 180;
alarm[0] = random_range(10,95);

