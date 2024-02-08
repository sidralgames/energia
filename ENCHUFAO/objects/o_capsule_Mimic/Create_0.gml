/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
contDie = 5;
canDie = false;
flashAlpha = 0;
isMimic = true;
isMimicCapsule = true;
upgradesBattery = global.batteryEnchufeListAmmonum;
contClosed = random_range(300, 500);
state = 0;

slowMoPickUps = random_range(8,10);

_hp = 10;
_sprite = s_capsule_Mimic;
sprite_attack = s_capsule_Mimic;
sprite_index = _sprite;
checkHP = false;

repelled = false;

burned = false;
contBurnedTotalMax = 300;
contBurnedTotal = contBurnedTotalMax;
contBurnedMax = 100;
contBurned = contBurnedMax;
contBurnPartMax = 5;
contBurnPart = contBurnPartMax;

electrocutated = false;
contElectro = contBurnedMax;
contElectroPart = contBurnPartMax;
contElectroTotal = contBurnedTotalMax;

burnFlash = 0;
electroFlash = 0;

freezing = 0;
freeze = false;
slowed = false;

slowedContMax = 30;
slowedCont = slowedContMax;

offset = irandom(360);
isPluggable = true;

contClosedMax = random_range(200,300)
