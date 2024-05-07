/// @description Insert description here
// You can write your code in this editor
chargedInEnergy = true;
chargedInAmmo = true;
chargedInHp = true;
firstSetted = false;
contLight = 0;

myPath = path_add();

for (var i=0; i<2; i++)
{
	chooseAttribute = choose(0,1,2)

	switch (chooseAttribute)
	{
		case 0:
		{
			chargedInAmmo = false;
		}break;
	
		case 1:
		{
			chargedInHp = false;
		}break;
	
		case 2:
		{
			chargedInEnergy = false;
		}break;
	}
}
called = false
sprite = -1;
strtandedPrecision = 2;
disconectedFirstTime = false;
connected = false;
connectedToEnchufe = false;
set = false;
charge = 0;
maxCharge = 500;
hpMax = 3;
hp = 1;
getFinalHP = false;
tocado = false;
cableFake = noone;
changedSpeed = false;

contPart = 3;

//bombs called
alarm[8] = random_range(60, 200);

weight = 0;
minSpeed = 0;
maxSpeed = 0;






chargeEnergy = 0;
maxChargeEnergy = 500;


chargeHp = 0;
maxChargeHp = 500;




oddChargedAmmo = choose(0,1)

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
xscale = 0.7;
yscale = 0.7;

