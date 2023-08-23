/// @description Insert description here
// You can write your code in this editor

global.milisecs = 0;
global.secs = 0;
global.minut = 0;
global.hour = 0;


//RESETEAR BIEN LAS GLOBALES PORQUE AHORA ES GAME RESTART Y CHAO, POR EJEMPLO LA DE ABAJO

global.secsInSlowMo = 0;
global.enemiesKilled = 0;
global.playerBumps = 0;
global.shootsFired = 0;
global.shieldsUsed = 0;
global.hitsTaken = 0;
global.secsConnected = 0;
global.bombsFired = 0;
global.petasUsed = 0;


customFont = font_add("ChubbyChoo-SemiBold.ttf", 32, false, false, 32, 128);
global.screenshakeIsOn = true;
enum ENEMYSTATE
{
	PLUGGED,
	FREE,
	WAITING,
	CHASING,
	SHOCKED
}

isPaused = false;

global.strandedShipGreen = false;
global.strandedShipBlue = false;
global.strandedShipRed = false;
global.strandedShipDark = false;
global.strandedShipPurple = false;

global.numStrandedShipGreen = 0;
global.numStrandedShipBlue = 0;
global.numStrandedShipRed = 0;
global.numStrandedShipPurple = 0;
global.numStrandedShipDark = 0;

global.audioEmitter = audio_emitter_create();

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



global.slowMoTimeMax = 300;
global.slowMoTime = 300;

global.overchargeTime = 1;

global.totalEnemiesOnScreen = 0;


global.coverSpeed = 1.05;

global.deletingData = false;

instance_create(-100,-100,o_partBalaP)
instance_create(-100,-100,o_partNaveP)
instance_create(-100,-100,o_partNaveEnemy1)
instance_create(-100,-100,o_partNaveEnemy_Waiting)
instance_create(-100,-100,o_partEnchufe)
instance_create(-100,-100,o_partBalaTorreta)
instance_create(-100,-100,o_partMisil)
instance_create(-100,-100,o_partOverCharged)
instance_create(-100,-100,o_partBalaTorretaBig);
instance_create(-100,-100,o_partRepairing);

global.repairingSprite = s_repairingPart;
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

global.pluggingShip = false;
global.unPluggingShip = false;

global.plugging = false;
global.unPlugging = false;

global.pluggingStrandedShipToEnchufe = false;

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

global.chargerShoots = false;

global.numberOfUpgrades = 0;
global.numberOfUpgradesPlayer = 0;
global.numberOfShips = 0;
global.posNumberOfShips = 0;


global.ammoIsUpgraded = false;
global.cableIsUpgraded = false;
global.chargerShootsIsUpgraded = false;
global.energyIsUpgraded = false;
global.fasterChargeIsUpgraded = false;
global.fireRateIsUpgraded = false;
global.HPIsUpgraded = false;
global.rerereIsUpgraded = false;
global.shieldsIsUpgraded = false;
global.slowerDischargeIsUpgraded = false;
global.slowMoIsUpgraded = false;
global.speedIsUpgraded = false;
global.superShotIsUpgraded = false;
global.overchargeIsUpgraded = false;

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
AddUpgradeChargerShoots();
AddUpgradeSlowMo();
AddUpgradeOvercharge();


global.shipList = ds_map_create();

AddShipGreen();
AddShipBlue();
AddShipRed();
AddShipDark();
AddShipPurple();


global.PlayerUpgradesList = ds_map_create();

global.numberOfInfos = 0;
global.InfoList = ds_map_create();


global.achievementList = ds_map_create();
global.numberOfAch = 0;
AddAchNoBump();
AddAch500Enemies();


global.statsList = ds_map_create();
global.numberOfStats = 0;
AddBestRunStat();
AddTotalDeathsStat();
AddTotalTimesPlugStat();
AddTotalConnectedTimeStat();
AddEnemiesKilledStat();
AddTotalBulletsStat();
AddBulletForEnemyStat();
AddTotalBombsStat();
AddTotalPETAStat();
AddTotalSlowMoTimeStat();


//global.possibleShipList = ds_map_create();

//AddShipGreenPos();
//AddShipBluePos();
//AddShipRedPos();
//AddShipDarkPos();
//AddShipPurplePos();


for (var i = 0; i < global.numberOfUpgrades; i++)
{
	upgrades = ds_map_find_value(global.upgradesList,i);
	upgrades.isPicked = false;
	
}


