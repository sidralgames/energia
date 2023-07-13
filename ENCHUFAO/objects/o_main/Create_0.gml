/// @description Insert description here
// You can write your code in this editor
enum ENEMYSTATE
{
	PLUGGED,
	FREE,
	WAITING,
	CHASING,
	SHOCKED
}


global.relativeSpeed = 1.0;

global.PETAsActive = 0;
global.BossBreach_awaken = false;

global.chargeTime = 1;
global.DischargeTime = 1;
global.superShot = 1;
global.spritePart = s_nave_part;
global.bulletPart_sprite = s_bullet_part;
global.fireRate = 15;
global.breachBanner = false;
global.BossBreach_Banner = false;

global.totalEnemiesOnScreen = 0;


global.coverSpeed = 1.05;

instance_create(-100,-100,o_partBalaP)
instance_create(-100,-100,o_partNaveP)
instance_create(-100,-100,o_partNaveEnemy1)
instance_create(-100,-100,o_partNaveEnemy_Waiting)
instance_create(-100,-100,o_partEnchufe)
instance_create(-100,-100,o_partBalaTorreta)
instance_create(-100,-100,o_partMisil)
instance_create(-100,-100,o_partOverCharged)
instance_create(-100,-100,o_partBalaTorretaBig);


global.enemies = 0;
speaking = false;
contSuperShotMain = 0;
global.textSpeed =  0.75;

white = c_white;
green = make_color_rgb(99,199,77)
blue = make_color_rgb(44,232,245)
yellow = make_color_rgb(254,174,52)

global.cableColor = white;

global.flashSuperShot = false;

global.plugging = false;
global.unPlugging = false;

global.bombAmmoMax = 5
global.bombAmmo = 2;

global.PETAsMax = 3;
global.PETAAmmo = 1;

PlayerStats_Green()
global.Go = false;
global.resetingShip = false;
global.chargingAmmo = false;
global.chargingHp = false;
global.chargingShield = false;
global.chargingEnergy = false;
global.chargingPETA = false;

global.numberOfUpgrades = 0;

global.upgradesList = ds_map_create();

AddUpgradeAmmo();
AddUpgradeEnergy();
AddUpgradeHP();
AddUpgradeFasterCharge();
AddUpgradeSlowerDischarge();
AddUpgradeLongerCable();
AddUpgradeFireRate();
AddUpgradeSuperShot();
AddUpgradeShields();
AddUpgradeReReRe();
AddUpgradeSpeedUp();


for (var i = 0; i < global.numberOfUpgrades; i++)
{
	upgrades = ds_map_find_value(global.upgradesList,i);
	upgrades.isPicked = false;
	
}
