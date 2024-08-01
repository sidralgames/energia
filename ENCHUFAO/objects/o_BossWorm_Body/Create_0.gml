/// @description Initialize the verlet simulation

// Create a new verlet system
// You can create multiple systems with different physic properties
inScreen = false;
checkInScreen = 0;

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
_sprite = s_BossWorm_Body;
_segments = 12;
rope1 = verletGroupCreateRopeTextured(verletSystem1, x, y, _sprite, _segments, 1, 10);

contPlugBody = -1;

// Create a new rope
//rope1 = verletGroupCreateRope(verletSystem1, x, y, cableColor, 2, 3, _segments, 2, 100, canCollide);

 //Attach its first vertex to an object
inst = instance_nearest(x,y,o_BossWorm_Mouth)
rope1.vertexAttachTo(first, inst);


//for (var i=1; i<=_segments; i++)
//{
//	instMetal[i] = instance_create_layer(x,y,"EnemiesHUESub",o_BossWorm_HitBox_Metal)
//	rope1.vertexAttachObject(i, instMetal[i],vertexAttachmentType.both);
//	instMetal[i].worm = inst;
//}

instMetal[1] = instance_create_layer(x,y,"EnemiesHUESub_1",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(1, instMetal[1],vertexAttachmentType.both);
instMetal[1].worm = inst;

instMetal[2] = instance_create_layer(x,y,"EnemiesHUESub",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(2, instMetal[2],vertexAttachmentType.both);
instMetal[2].worm = inst;

instMetal[3] = instance_create_layer(x,y,"EnemiesHUESub2",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(3, instMetal[3],vertexAttachmentType.both);
instMetal[3].worm = inst;

instMetal[4] = instance_create_layer(x,y,"EnemiesHUESub2",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(4, instMetal[4],vertexAttachmentType.both);
instMetal[4].worm = inst;

instMetal[5] = instance_create_layer(x,y,"EnemiesHUESub3",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(5, instMetal[5],vertexAttachmentType.both);
instMetal[5].worm = inst;

instMetal[6] = instance_create_layer(x,y,"EnemiesHUESub3",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(6, instMetal[6],vertexAttachmentType.both);
instMetal[6].worm = inst;

instMetal[7] = instance_create_layer(x,y,"EnemiesHUESub4",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(7, instMetal[7],vertexAttachmentType.both);
instMetal[7].worm = inst;

instMetal[8] = instance_create_layer(x,y,"EnemiesHUESub4",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(8, instMetal[8],vertexAttachmentType.both);
instMetal[8].worm = inst;

instMetal[9] = instance_create_layer(x,y,"EnemiesHUESub5",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(9, instMetal[9],vertexAttachmentType.both);
instMetal[9].worm = inst;

instMetal[10] = instance_create_layer(x,y,"EnemiesHUESub5",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(10, instMetal[10],vertexAttachmentType.both);
instMetal[10].worm = inst;

instMetal[11] = instance_create_layer(x,y,"EnemiesHUESub6",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(11, instMetal[11],vertexAttachmentType.both);
instMetal[11].worm = inst;

instMetal[12] = instance_create_layer(x,y,"EnemiesHUESub6",o_BossWorm_HitBox_Metal)
rope1.vertexAttachObject(12, instMetal[12],vertexAttachmentType.both);
instMetal[12].worm = inst;



//for (var i=1; i<=_segments; i++)
//{
//	instBody[i] = instance_create_layer(x,y,"EnemiesHUESub",o_BossWorm_HitBox)
//	rope1.vertexAttachObject(i, instBody[i],vertexAttachmentType.both);
//	instBody[i].worm = inst;
//	instBody[i].Metal = instMetal[i];

//}


instBody[1] = instance_create_layer(x,y,"EnemiesHUESub_1",o_BossWorm_HitBox)
rope1.vertexAttachObject(1, instBody[1],vertexAttachmentType.both);
instBody[1].worm = inst;
instBody[1].Metal = instMetal[1];

instBody[2] = instance_create_layer(x,y,"EnemiesHUESub",o_BossWorm_HitBox)
rope1.vertexAttachObject(2, instBody[2],vertexAttachmentType.both);
instBody[2].worm = inst;
instBody[2].Metal = instMetal[2];

instBody[3] = instance_create_layer(x,y,"EnemiesHUESub2",o_BossWorm_HitBox)
rope1.vertexAttachObject(3, instBody[3],vertexAttachmentType.both);
instBody[3].worm = inst;
instBody[3].Metal = instMetal[3];

instBody[4] = instance_create_layer(x,y,"EnemiesHUESub2",o_BossWorm_HitBox)
rope1.vertexAttachObject(4, instBody[4],vertexAttachmentType.both);
instBody[4].worm = inst;
instBody[4].Metal = instMetal[4];

instBody[5] = instance_create_layer(x,y,"EnemiesHUESub3",o_BossWorm_HitBox)
rope1.vertexAttachObject(5, instBody[5],vertexAttachmentType.both);
instBody[5].worm = inst;
instBody[5].Metal = instMetal[5];

instBody[6] = instance_create_layer(x,y,"EnemiesHUESub3",o_BossWorm_HitBox)
rope1.vertexAttachObject(6, instBody[6],vertexAttachmentType.both);
instBody[6].worm = inst;
instBody[6].Metal = instMetal[6];

instBody[7] = instance_create_layer(x,y,"EnemiesHUESub4",o_BossWorm_HitBox)
rope1.vertexAttachObject(7, instBody[7],vertexAttachmentType.both);
instBody[7].worm = inst;
instBody[7].Metal = instMetal[7];

instBody[8] = instance_create_layer(x,y,"EnemiesHUESub4",o_BossWorm_HitBox)
rope1.vertexAttachObject(8, instBody[8],vertexAttachmentType.both);
instBody[8].worm = inst;
instBody[8].Metal = instMetal[8];

instBody[9] = instance_create_layer(x,y,"EnemiesHUESub5",o_BossWorm_HitBox)
rope1.vertexAttachObject(9, instBody[9],vertexAttachmentType.both);
instBody[9].worm = inst;
instBody[9].Metal = instMetal[9];

instBody[10] = instance_create_layer(x,y,"EnemiesHUESub5",o_BossWorm_HitBox)
rope1.vertexAttachObject(10, instBody[10],vertexAttachmentType.both);
instBody[10].worm = inst;
instBody[10].Metal = instMetal[10];

instBody[11] = instance_create_layer(x,y,"EnemiesHUESub6",o_BossWorm_HitBox)
rope1.vertexAttachObject(11, instBody[11],vertexAttachmentType.both);
instBody[11].worm = inst;
instBody[11].Metal = instMetal[11];

instBody[12] = instance_create_layer(x,y,"EnemiesHUESub6",o_BossWorm_HitBox)
rope1.vertexAttachObject(12, instBody[12],vertexAttachmentType.both);
instBody[12].worm = inst;
instBody[12].Metal = instMetal[12];






instBody[2].image_index = 1;
instBody[5].image_index = 1;
instBody[8].image_index = 1;
instBody[11].image_index = 1;


//for (var i=0; i<4; i++)
//{
//	instEnchufe[i] = instance_create_layer(x,y,"EnemiesNoHUE",o_EnchufeBossWorm)
//	instEnchufe[i].enchufeNum = i;
//	instEnchufe[i].worm = inst;
	
//}

instEnchufe[0] = instance_create_layer(x,y,"EnemiesNoHUE",o_EnchufeBossWorm)
instEnchufe[0].enchufeNum = 0;
instEnchufe[0].worm = inst;


instEnchufe[1] = instance_create_layer(x,y,"EnemiesNoHUE2",o_EnchufeBossWorm)
instEnchufe[1].enchufeNum = 1;
instEnchufe[1].worm = inst;


instEnchufe[2] = instance_create_layer(x,y,"EnemiesNoHUE3",o_EnchufeBossWorm)
instEnchufe[2].enchufeNum = 2;
instEnchufe[2].worm = inst;


instEnchufe[3] = instance_create_layer(x,y,"EnemiesNoHUE4",o_EnchufeBossWorm)
instEnchufe[3].enchufeNum = 3;
instEnchufe[3].worm = inst;




instEnchufe[0].Metal1 = instMetal[1]
instEnchufe[0].Metal2 = instMetal[3]
instEnchufe[0].MyMetal = instMetal[2]
instEnchufe[0].MyHitBox = instBody[2]
instEnchufe[0].hp = true;
instEnchufe[0].image_index = 0;



instEnchufe[1].Metal1 = instMetal[4]
instEnchufe[1].Metal2 = instMetal[6]
instEnchufe[1].MyMetal = instMetal[5]
instEnchufe[1].MyHitBox = instBody[5]
instEnchufe[1].ammo = true;
instEnchufe[1].image_index = 1;




instEnchufe[2].Metal1 = instMetal[7]
instEnchufe[2].Metal2 = instMetal[9]
instEnchufe[2].MyMetal = instMetal[8]
instEnchufe[2].MyHitBox = instBody[8]
instEnchufe[2].laser = true;
instEnchufe[2].image_index = 2;



instEnchufe[3].Metal1 = instMetal[10]
instEnchufe[3].Metal2 = instMetal[12]
instEnchufe[3].MyMetal = instMetal[11]
instEnchufe[3].MyHitBox = instBody[11]
instEnchufe[3].energy = true;
instEnchufe[3].image_index = 3;



rope1.vertexAttachObject(2, instEnchufe[0],vertexAttachmentType.both);
rope1.vertexAttachObject(5, instEnchufe[1],vertexAttachmentType.both);
rope1.vertexAttachObject(8, instEnchufe[2],vertexAttachmentType.both);
rope1.vertexAttachObject(11, instEnchufe[3],vertexAttachmentType.both);

plugged = false;


instAchor = instance_create_layer(x,y,"EnemiesHUESub6",o_chargerBossWorm)
rope1.vertexAttachObject(last, instAchor,vertexAttachmentType.both);



//instTope = instance_create(x, y, o_coco);
//rope1.vertexAttachObject(last, instTope, vertexAttachmentType.positionOnly);

alarm[0] = random_range(10,95);

