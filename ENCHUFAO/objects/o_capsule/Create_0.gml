/// @description Insert description here
// You can write your code in this editor
randomize();





// Inherit the parent event
event_inherited();
_hpush = choose(random_range(0.05, 0.1),-random_range(0.05, 0.1))
_vpush = choose(random_range(0.05, 0.1), -random_range(0.05, 0.1))
energy = false;
ammo = false;
hp = false;
laser = false;

_sprite = choose(
0,0,0,0, //Energy
1, //Ammo
2, //HP
3) //Laser



IsEnchufeCapsule = true;
IsEnchufeCapsuleSuper = false;
capsuleHaveSomething = true;

maxCharge = 200;

sprite_enchufePluged = s_capsuleOpen;

inside = choose(
"Battery","Battery","Battery",
"Bomb","Bomb","Bomb",
"SlowMo","SlowMo","SlowMo",
"Enemy","Enemy",
"Radar",
"Sidekick");

switch(inside)
{
	case "Battery":
	{
		capsuleHaveBattery = true;
		battery = choose(
		o_smartBulletsPickUp, o_BouncingBulletsPickUp, 
		o_piercingBulletsPickUp, o_PushingBulletsPickUp,
		o_SplitBulletsPickUp, o_BurningBulletsPickUp,
		o_ElectroBulletsPickUp, o_GhostBulletsPickUp,
		o_iceBulletsPickUp)

		batteryCreated = instance_create(x,y,battery);
		batteryCreated.inCapsule = true;
		batteryCreated.depth = depth+1;
		
	}break;
	
	case "Sidekick":
	{
		capsuleHaveStranded = true;
		strandedFake = instance_create(x,y,o_strandedFake);
		strandedFake.capsule = self;
		strandedFake.depth = depth+1;
		
	}break;	
	
	case "Enemy":
	{
		capsuleHaveEnemy = true;
		enemyFake = instance_create(x,y,o_strandedFake);
		enemyFake.capsule = self;
		enemyFake.depth = depth+1;
	
	}break;
	
	case "Bomb":
	{
		capsuleHaveBomb = true;
		bombFake = instance_create(x,y,o_bombFake);
		bombFake.capsule = self;
		bombFake.depth = depth+1;
	
	}break;
	
	case "Radar":
	{
		capsuleHaveRadar = true;
		radarFake = instance_create(x,y,o_bombFake);
		radarFake.capsule = self;
		radarFake.depth = depth+1;
	
	}break;
	
	case "SlowMo":
	{
		capsuleHaveSlowMo = true;
		slowFake = instance_create(x,y,o_slowMoFake);
		slowFake.capsule = self;
		slowFake.depth = depth+1;
	
	}break;
	
}

switch(_sprite)
{
	case 0:
	{
		sprite_index = s_capsule
		energy = true;
		
	}break;
	
	case 1:
	{
		sprite_index = s_capsuleAmmo
		ammo = true;
		
	}break;
	
	case 2:
	{
		sprite_index = s_capsuleHP
		hp = true;
		
	}break;
	
	case 3:
	{
		sprite_index = s_capsuleLaser
		laser = true;
		
	}break;
}


scale = 1;
_hpMax = 8;
_hp = _hpMax;
image_speed =0;
bnc = 0.8;