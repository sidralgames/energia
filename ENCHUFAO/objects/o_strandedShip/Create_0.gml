/// @description Insert description here
// You can write your code in this editor

sprite = -1;
strtandedPrecision = 2;
disconectedFirstTime = false;
connected = false;
connectedToEnchufe = false;
set = false;
charge = 0;
maxCharge = 500;
hpMax = 3;
hp = hpMax;
tocado = false;
cableFake = noone;
numShip = irandom(global.numberOfShips-1);
changedSpeed = false;

weight = 0;
minSpeed = 0;
maxSpeed = 0;


oddChargedEnergy = choose(0,1)
if (oddChargedEnergy == 1)
{
	chargedInEnergy = true;
}
else
{
	chargedInEnergy = false;
}


chargeEnergy = 0;
maxChargeEnergy = 500;

chargedInHp = false;
chargeHp = 0;
maxChargeHp = 500;


oddChargedAmmo = choose(0,1)
if (oddChargedAmmo == 1)
{
	chargedInAmmo = true;
}
else
{
	chargedInAmmo = false;
}
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


imageStrandedAmmo = 0;
imageStrandedEnergy = 0;
imageStrandedHp = 0;

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

