/// @description Insert description here
// You can write your code in this editor
alarm[7] = 60;
sprite = -1;
connected = false;
connectedToEnchufe = false;
set = false;
charge = 0;
maxCharge = 500;



weight = 0;
minSpeed = 0;
maxSpeed = 0;

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






_hpush = choose(random_range(-1.5,-1),random_range(1.5,1));
_vpush = choose(random_range(-1.5,-1),random_range(-1.5,-1));
bnc = 1;
_angle = image_angle;
xscale = 0.8;
yscale = 0.8;

