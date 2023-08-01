/// @description Insert description here
// You can write your code in this editor
sprite = -1;
connected = false;
connectedToEnchufe = false;
charge = 0;
maxCharge = 500;

chargedInEnergy = false;
chargeEnergy = 0;
maxChargeEnergy = 500;

chargedInHp = false;
chargeHp = 0;
maxChargeHp = 500;

chargedInAmmo = false;
chargeAmmo = 0;
maxChargeAmmo = 500;

myCharger = noone
enum STRANDEDSHIPSTATE
{
	STRANDED,
	CONNECTEDSHIP,
	CONNECTEDSHIPCHARGED,
	CONNECTEDENCHUFE
	
}
goesToNextRoom = false;

diffX = random_range(-100,100)
diffY = random_range(-100,100)
strandedSpeed = random_range(1.5,2.5);	

state = STRANDEDSHIPSTATE.STRANDED;




unlocked = false;

standedShipfireRate = 15;



waitingSpeed = random_range(1,1.25)
breakDistance = random_range(0.005, 0.05)
accelDistance = random_range(0.005, 0.05);
offRange = 2;

if sprite =-1
{
	ship = ds_map_find_value(global.shipList, irandom(global.numberOfShips-1))
	while (ship.sprite = global.spriteShip)
	{
		ship = ds_map_find_value(global.shipList, irandom(global.numberOfShips-1))
	}


	sprite = ship.sprite
}


if (sprite = splayer)
{
	strandedShipCableStat = 4;
	weight = 1;
	minSpeed = 1.5;
	maxSpeed = 2.5;
	
}
else if (sprite = splayer_Blue)
{
	strandedShipCableStat = 2;
	weight = 1;
	minSpeed = 1.95;
	maxSpeed = 3.5;
}
else if (sprite = splayer_Dark)
{
	strandedShipCableStat = 3;	
	weight = 1;
	minSpeed = 1.75;
	maxSpeed = 2.5;
}
else if (sprite = splayer_Red)
{
	strandedShipCableStat = 4.5;
	weight = 0.5;
	minSpeed = 1.5;
	maxSpeed = 2;
}
else if (sprite = splayer_Purple)
{
	strandedShipCableStat = 3;
	weight = 1;
	minSpeed = 1.75;
	maxSpeed = 2.75;
}

maxDistance = strandedShipCableStat *35;
hasCharger = false;
sprite_index = sprite;

cable = instance_create_layer(x,y,"Cable", o_cableStrandedShip);

_hpush = choose(random_range(-1.5,-1),random_range(1.5,1));
_vpush = choose(random_range(-1.5,-1),random_range(-1.5,-1));
bnc = 1;
_angle = image_angle;

