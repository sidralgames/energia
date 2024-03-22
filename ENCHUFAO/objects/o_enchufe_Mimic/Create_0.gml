/// @description Insert description here
// You can write your code in this editor






// Inherit the parent event
event_inherited();
enemyBestiaryNumber = 21;
contDie = 5;
canDie = false;
flashAlpha = 0;
isMimic = true;
upgradesBattery = global.batteryEnchufeListAmmonum;
contClosed = random_range(300, 500);
state = 0;

slowMoPickUps = random_range(8,10);

_hp = 15;
enchufeToMimic = choose("Ammo", "HP", "Energy", "Laser");

if (enchufeToMimic = "Ammo")
{
	_sprite = s_enchufeMimic_Ammo;
	sprite_attack= s_enchufeMimic_AmmoAttack;
}
else if (enchufeToMimic = "HP")
{
	_sprite = s_enchufeMimic_HP;
	sprite_attack= s_enchufeMimic_HPAttack;
}
else if (enchufeToMimic = "Energy")
{
	_sprite = s_enchufeMimic_Energy;
	sprite_attack= s_enchufeMimic_EnergyAttack;
}
else if (enchufeToMimic = "Laser")
{
	_sprite = s_enchufeMimic_Laser;
	sprite_attack= s_enchufeMimic_LaserAttack;
}

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


