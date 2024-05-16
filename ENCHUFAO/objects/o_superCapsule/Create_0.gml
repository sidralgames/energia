/// @description Insert description here
// You can write your code in this editor
randomize();





// Inherit the parent event
event_inherited();

inScreen = true;
checkInScreen = 0;

energy = false;
ammo = false;
hp = false;
laser = false;

IsEnchufeCapsule = true;
IsEnchufeCapsuleSuper = true;
capsuleHaveSomething = true;

maxCharge = 160;

sprite_enchufePluged = s_capsuleOpen;

scale = 1;
_hpMax = 20;
_hp = _hpMax;
image_speed =0;

capsulesMax = irandom_range(3,5);

for ( i=0; i<capsulesMax; i++)
{
	dist = choose(random_range(10,30), random_range(-10, -30));
	capsuleAngle = irandom(360)
	
	capsule[i] = instance_create(x+ lengthdir_x(dist,capsuleAngle), y+ lengthdir_y(dist, capsuleAngle), o_capsuleFake) 
	capsule[i].depth = depth+1;
	capsule[i].image_speed = 0;
	capsule[i].image_index = 0;
	capsule[i].image_angle = irandom(360);
	capsule[i].capsuleAngle = capsuleAngle;
	capsule[i].dist = dist;
}

bnc = 0.6;