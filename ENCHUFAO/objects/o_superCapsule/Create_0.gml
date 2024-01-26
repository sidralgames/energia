/// @description Insert description here
// You can write your code in this editor
randomize();





// Inherit the parent event
event_inherited();

energy = false;
ammo = false;
hp = false;
laser = false;

IsEnchufeCapsule = true;
IsEnchufeCapsuleSuper = true;
capsuleHaveSomething = true;

maxCharge = 400;

sprite_enchufePluged = s_capsuleOpen;

scale = 1;
_hpMax = 8;
_hp = _hpMax;
image_speed =0;
capsulesMax = 8;

for ( i=0; i<capsulesMax; i++)
{
	dist = random_range(25,-25);
	capsuleAngle = irandom(360)
	
	capsule[i] = instance_create(x+ lengthdir_x(dist,capsuleAngle), y+ lengthdir_y(dist, capsuleAngle), o_capsuleFake) 
	capsule[i].depth = depth+1;
	capsule[i].image_angle = irandom(360);
	capsule[i].capsuleAngle = capsuleAngle;
	capsule[i].dist = dist;
}

bnc = 0.6;