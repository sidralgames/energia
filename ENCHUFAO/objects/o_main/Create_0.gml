/// @description Insert description here
// You can write your code in this editor

global.bestiaryEnemiesNum = 1;
global.differentEnemiesTotal = 25;

global.meteorsCount = 0;
global.crosshairSprite = s_crosshair;
global.crosshairSpritesMax = 6;
full = false;
global.totalEnemies = 0;
global.BossWormHPMax = 0;
global.BossWormHP = 10;
global.FinalTrail = false;
global.rotationKilledBy = false;

global.shieldsMax = 18

global.spriteKilledBy = noone;



global.assistedSlowmo = false;
global.assistSlowmoIsOn = false;

global.radarIsOn = false;
global.energyRadar = false;
global.laserRadar = false;
global.hpRadar = false;
global.ammoRadar = false;

global.assistedAim = false;


//-------COLORS--------//
global.red = make_color_rgb(228, 59, 68); 
global.brightRed = make_colour_rgb(255,0,68);
global.yellow = make_color_rgb(254,231, 97);
global.lightBlue = make_color_rgb(44,232, 245);
global.blue = make_color_rgb(0,149,233);
global.dark = make_color_rgb(38,43,68)

//---- FONTS ---//
global.customFont20 = font_add("ChubbyChoo-SemiBold.ttf", 20, false, false, 32, 128);
global.customFont16= font_add("ChubbyChoo-SemiBold.ttf", 16, false, false, 32, 128);
global.customFont13= font_add("ChubbyChoo-SemiBold.ttf", 13, false, false, 32, 128);
global.customFont14 = font_add("ChubbyChoo-SemiBold.ttf", 14, false, false, 32, 128);
global.customFont12 = font_add("ChubbyChoo-SemiBold.ttf", 12, false, false, 32, 128);
global.customFont10 = font_add("ChubbyChoo-SemiBold.ttf", 11, false, false, 32, 128);


//--------------- MEGA UPGRADES -----------------//

//--INVISIBILITY CLOAK--//
global.haveInvisibiltyCloak = false;
global.invisibleCloak = false;
global.cloackReal = 1;

global.inSmokeArea = false;

//--PETAS MULTICHARGE--//
global.allPETAisMulti = false;

//--EXTERNAL BATTERY--//
global.haveExternalBattery = false;
global.externalBatteryOn = false;

//--CALL FOR HELP--//
global.haveCallForHelp = false;


//-------BULLET MODIFICATORS----------//
global.piercingShot = false;
global.bouncingBulletsIsOn = false;
global.bulletsPushenemiesIsOn = false;
global.bulletsAreBombs = false;
global.bulletsDestroyBulletsIsOn = false; ///////// OK
global.bulletsAreSmartIsOn = false; /////////// OK
global.bulletsBifurcateIsOn = false; /////// OK
global.bulletsDanceIsOn = false; ////////////OK movimiento en s
global.bulletsBurnIsOn = false;
global.bulletsElectroIsOn = false;
global.bulletsGhostIsOn = false;
global.bulletsIceIsOn = false; // DIBUJO HIELO IN PROGRESS


global.alhpaGhost = 1;

global.havePickedBouncingBullets = false;
global.havePickedSmartBullets = false;
global.havePickedPiercingBullets = false;
global.havePickedExploBullets = false;
global.havePickedSplitBullets = false;
global.havePickedPushingBullets = false;
global.havePickedBurningBullets = false;
global.havePickedElectroBullets = false;
global.havePickedGhostBullets = false;
global.havePickedIceBullets = false;

//------LASER MODIFICATORS-----------//
global.laserBurnEnemies = true; /////////// OK
global.laserSlowEnemies = true;////////////// OK


//---- EXPERIMENTAL ----//



// ---ONLY EN LA HEAD ---//

global.accuracy =0;

global.laserLastLongIsOn = false; //Dibujalo mas fames y ue localcule en el step tmb mas clao //cvhungo en favoritos tienes algo
  
global.laserAtractEnemies = false;
global.laserDobleIsOn = false;
global.laserStunsEnemies = false; //fLASH AL LANZARLO





global.shootingRecharges = false;
global.friendIsUpgraded = false;





//---------- ENEMIES XP LIST-----------------//
global.enemyStandardXP = 20;
global.enemyFastXP = 20;
global.enemyFastMiniXP = 10;
global.enemyDispXP = 35;
global.enemyShieldXP = 50;
global.enemyMothershipXP = 100;

global.changingTiles = false

global.amplifyPowerLaser = 0;
global.amplifyPowerAmmo = 0;

global.song = choose(snd_songMaster)

global.secs = 0;


global.laserWidth = 0;
global.laserDamage=0;

global.shields = 0;
global.shieldsMax = 10;

global.laserDrain = 0.005;
global.energyLow = 80;


//RESETEAR BIEN LAS GLOBALES PORQUE AHORA ES GAME RESTART Y CHAO, POR EJEMPLO LA DE ABAJO

global.enemiesKilled = 0;
global.playerBumps = 0;
global.shootsFired = 0;
global.shieldsUsed = 0;
global.hitsTaken = 0;
global.bombsFired = 0;
global.petasUsed = 0;

font_add_enable_aa(false);


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


//------------ STRANDED SHIPS --------------//
global.strandedShipGreen = false;
global.strandedShipBlue = false;
global.strandedShipRed = false;
global.strandedShipDark = false;
global.strandedShipPurple = false;
global.strandedShipMP3 = false;

global.strandedShipGreenHP = 3;
global.strandedShipBlueHP = 3;
global.strandedShipRedHP = 3;
global.strandedShipPurpleHP = 3;
global.strandedShipDarkHP = 3;
global.strandedShipMP3HP = 3;

global.strandedHPUpgrade = 0;
global.pluggingStrandedShipToEnchufe = false;


global.BossGarbanzo_Awaken = false;


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

global.totalEnemiesOnLevel = 0;
global.totalEnemiesOnLevelMax = 20;

global.coverSpeed = 1.05;

global.deletingData = false;

//----------PARTICLES----------//
instance_create_layer(-100,-100, "Part",o_partBalaP)
instance_create_layer(-100,-100,"Part",o_partNaveP)
instance_create_layer(-100,-100,"Part",o_partNaveEnemy1)
instance_create_layer(-100,-100,"Part",o_partNaveEnemy_Waiting)
instance_create_layer(-100,-100,"Part",o_partEnchufe)
instance_create_layer(-100,-100,"Part",o_partBalaTorreta)
instance_create_layer(-100,-100,"Part",o_partMisil)
instance_create_layer(-100,-100,"Part",o_partOverCharged)
instance_create_layer(-100,-100,"Part",o_partBalaTorretaBig);
instance_create_layer(-100,-100,"Part",o_partRepairing);
instance_create_layer(-100,-100,"Part",o_partAmmo);
instance_create_layer(-100,-100,"Part",o_partLaser);
instance_create_layer(-100,-100,"Part",o_partEnergy);
instance_create_layer(-100,-100,"Part",o_partBalaBossGarbanzo);
instance_create_layer(-100,-100,"Part",o_partNaveEnemy_Mini);
instance_create_layer(-100,-100,"Part",o_partNaveP_cloak)
instance_create_layer(-100,-100,"Part",o_partNaveFriend)
instance_create_layer(-100,-100,"ShieldEnemy",o_partSmoke)
instance_create_layer(-100,-100,"Part",o_partGreen);
instance_create_layer(-100,-100,"Pause",o_partEnemyKilledBy)
instance_create_layer(-100,-100,"Text",o_partSmokeBomb)
instance_create_layer(-100,-100,"Part",o_partSmokeBombBack)


global.repairingSprite = s_repairingPart;

speaking = false;
contSuperShotMain = 0;
global.textSpeed =  0.75;

white = c_white;
green = make_color_rgb(99,199,77)
blue = make_color_rgb(44,232,245)


global.cableColor = white;

global.pluggingShip = false;
global.unPluggingShip = false;

global.plugging = false;
global.unPlugging = false;

//----STARTING AMMO--//
global.bombAmmoMax = 4
global.bombAmmo = 2;

global.PETAsMax = 3;
global.PETAAmmo = 1;

PlayerStats_Green()
global.Go = false;
global.resetingShip = false;

//----CHARGING ENCHUFES----//
global.chargingAmmo = false;
global.chargingHp = false;
global.chargingLaser = false;
global.chargingEnergy = false;
global.chargingPETA = false;
global.chargingBombs = false;


global.relativeFastSpeed = 0.3;




global.posNumberOfShips = 0;


//---------------------UPGRADES-----------------17----//
global.numberOfUpgrades = 0;
global.numberOfUpgradesPlayer = 0;

global.PlayerUpgradesList = ds_map_create();

global.upgradesList = ds_map_create();
AddUpgradeAmmo();
AddUpgradeEnergy();
AddUpgradeHP();
AddUpgradeFasterCharge();
AddUpgradeSlowerDischarge();//5
AddUpgradeLongerCable();
AddUpgradeFireRate();
AddUpgradeSuperShot();
AddUpgradeLaserMax();
AddUpgradeReReRe();//10
AddUpgradeSpeedUp();
AddUpgradeChargerShoots();
AddUpgradeSlowMo();
AddUpgradeOvercharge();
AddUpgradeClusterBomb();//15
AddUpgradeLaser();
//AddUpgradeBonus();  -----> MOVED TO ENCHUFE INICIO
AddUpgradeDobleDoble();
AddUpgradeFriend();
AddUpgradeShootingRecharges();//20
AddUpgradeRecoverBullet();
AddUpgradeChargerElectro();
AddUpgradeExploHit();
AddUpgradeHomingBomb();
AddUpgradeSmokeBomb(); //25
AddUpgradeShockingPETAS();
AddUpgradeHomingBombPlus();
AddUpgradeLongLastingChip();
AddUpgradeMoreChipDrops();



global.ammoIsUpgraded = false;
global.cableIsUpgraded = false;
global.chargerShootsIsUpgraded = false;
global.energyIsUpgraded = false;
global.fasterChargeIsUpgraded = false;
global.fireRateIsUpgraded = false;
global.HPIsUpgraded = false;
global.rerereIsUpgraded = false;
global.laserMaxIsUpgraded = false;
global.slowerDischargeIsUpgraded = false;
global.slowMoIsUpgraded = false;
global.speedIsUpgraded = false;
global.superShotIsUpgraded = false;
global.overchargeIsUpgraded = false;
global.clusterIsUpgraded = false;
global.homingIsUpgraded = false;
global.homingPlusIsUpgraded = false;
global.smokeIsUpgraded = false;
global.laserIsUpgraded = false;
global.bonusIsUpgraded = false;
global.dobleDobleIsUpgraded = false;
//global.friendIsUpgraded = false; MOVED UP
global.shootingRechargesIsUpgraded = false;
global.recoverBulletIsUpgraded = false;
global.chargerElectrocutatesIsUpgraded = false;
global.exploHitIsUpgraded = false;
global.shockingPetasIsUpgraded = false;
global.longLastingChipIsUpgraded = false;
global.moreChipDropsIsUpgraded = false;




//----- MEGA UPGRADES ------//
global.numberOfMegaUpgrades = 0;
global.megaUpgradesList = ds_map_create();

AddMegaUpgradePeta();
AddMegaUpgradeInvisible();
AddMegaUpgradeCavalry();
AddMegaUpgradeExternalBattery();
AddMegaUpgradeHP();

global.invisibleIsMegaUpgraded = false;
global.petaIsMegaUpgraded = false;
global.cavalryIsMegaUpgraded = false;

//--------UPGRADE RELATED--------//
//--BOMBS--//
global.haveSmokeBomb = false;
global.bombIsClusterBomb = false;
global.bombIsHomingBomb = false;
global.homingMissilesExtra = 0;

global.chargerShoots = false;
global.damageDealt = 1;
global.damageReceived = 1;



//---BONUS UPGRADE FOR EACH SHIP---//
global.shipGreenBonusUpgraded = false;
global.shipRedBonusUpgraded = false;
global.shipBlueBonusUpgraded = false;
global.shipPurpleBonusUpgraded = false;
global.shipDarkBonusUpgraded = false;
global.shipMP3BonusUpgraded = false;




//----------ENCHUFE UPGRADES -------// EXPERIMENTAL-------///
checkUpgradesOfEnchufe = false;
global.enchufeHPUpgradesList = ds_map_create();
global.enchufeAmmoUpgradesList = ds_map_create();
global.enchufeLaserUpgradesList = ds_map_create();
global.enchufeEnergyUpgradesList = ds_map_create();


global.enchufeHPUpgradesNum = 0;
global.enchufeAmmoUpgradesNum = 0;
global.enchufeLaserUpgradesNum = 0;
global.enchufeEnergyUpgradesNum = 0;

AddUpgradeEnchufeHP();
AddUpgradeEnchufeAmmo();
AddUpgradeEnchufeEnergy();
AddUpgradeEnchufeLaser();

global.batteryEnchufeListHPnum = 0;
global.batteryEnchufeListAmmonum = 0;
global.batteryEnchufeListLasernum = 0;
global.batteryEnchufeListEnergynum = 0;


global.batteryEnchufeListHP = ds_map_create();
global.batteryEnchufeListAmmo = ds_map_create();
global.batteryEnchufeListLaser = ds_map_create();
global.batteryEnchufeListEnergy = ds_map_create();



//---------------- PLAYER SHIPS -----------------//
global.numberOfShips = 0;

global.shipList = ds_map_create();
AddShipGreen();
AddShipBlue();
AddShipRed();
AddShipDark();
AddShipPurple();
AddShipMP3();

//---------------- ACHIEVEMENTS--------------------//
global.numberOfAch = 0;

global.achievementList = ds_map_create();
AddAchNoBump();
AddAch500Enemies();


global.statsList = ds_map_create();
global.numberOfStats = 0;
AddBestRunStat();
AddHighScoreStat();
AddTotalDeathsStat();
AddTotalTimesPlugStat();
AddTotalConnectedTimeStat();
AddEnemiesKilledStat();
AddTotalBulletsStat();
AddBulletForEnemyStat();
AddTotalBombsStat();
AddTotalPETAStat();
AddTotalSlowMoTimeStat();
AddTotalBumpsStat();




global.bestiaryList = ds_map_create();

global.numberOfEnemiesBestiary = 0;
//
AddBestiaryEnemyBasic();
AddBestiaryEnemyBasicMega();
AddBestiaryEnemyFast();
AddBestiaryEnemyDisp();
AddBestiaryEnemySniper();
AddBestiaryEnemySniperMega();
AddBestiaryEnemyShield();
AddBestiaryEnemyMini();

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




//---- TEMPORARY UPGRADES -----//

global.chipDuration = 60 * 25;
global.chipPosition = 1;
global.chipDrop = 0;

global.chipVertexDead = 0;

global.chipSmartFactor =0;

global.chipsVertex = 0;
global.chipsAmmoRateTot = 0;
global.chipsAmmoSuperTot = 0;
global.chipsLaserTot = 0;

global.superShot = 1;

global.temporaryFireRate = 0;
global.temporarySuperShot = 0;

global.temporaryLaser = 0;

global.temporaryFireRate_Factor = 0;


global.superShotInitial = global.superShot;
global.laserDamageInitial = global.laserDamage;
global.laserWidthInitial = global.laserWidth;
