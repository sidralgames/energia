/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();

IsEnchufeCapsule = true;
capsuleHaveSomething = true;

maxCharge = 200;
energy = true;
sprite_enchufePluged = s_capsuleOpen;

inside = choose(
"Battery","Battery","Battery");

switch(inside)
{
	case "Battery":
	{
		capsuleHaveBattery = true;
		battery = choose(
		o_smartBulletsPickUp, o_BouncingBulletsPickUp, 
		o_piercingBulletsPickUp, o_PushingBulletsPickUp,
		o_SplitBulletsPickUp, o_BurningBulletsPickUp,
		o_ElectroBulletsPickUp, o_GhostBulletsPickUp)

		batteryCreated = instance_create(x,y,battery);
		batteryCreated.inCapsule = true;
		batteryCreated.depth = depth+1;
		
	}break;
	
	case "Sidekick":
	{
		capsuleHaveStranded = true;
		strandedFake = instance_create(x,y,o_strandedFake);
		strandedFake.depth = depth+1;
		
	}break;	
	
	case "Enemy":
	{
		capsuleHaveEnemy = true;
		enemyFake = instance_create(x,y,o_strandedFake);
		enemyFake.depth = depth+1;
	
	}break;
	
	case "Bomb":
	{
		capsuleHaveBomb = true;
		bombFake = instance_create(x,y,o_bombFake);
		bombFake.depth = depth+1;
	
	}break;
	
	case "Radar":
	{
		capsuleHaveRadar = true;
		radarFake = instance_create(x,y,o_bombFake);
		radarFake.depth = depth+1;
	
	}break;
	
	case "SlowMo":
	{
		capsuleHaveSlowMo = true;
		slowFake = instance_create(x,y,o_slowMoFake);
		slowFake.depth = depth+1;
	
	}break;
	
}

scale = 1;
_hpMax = 8;
_hp = _hpMax;
image_speed =0;