/// @description Insert description here
// You can write your code in this editor
//if room != Sala_Inicio
//{
//	lightEnchufe= instance_create_layer(x,y,"LightPlayer",o_Light_Enchufe);
//type = collisionType.custom;


randomize();
upgradesBattery=0;

scale = 1;
enchufeBomb = false;

deleteData = false;

withStrandedShip = false;

charging = false;
isPETA = false;
isPETAHP = false;
isPETAAmmo = false;
isPETAShield = false;
isPETAAll = false;
isPETA_F = false;
petaActive = false;
dying = false;
bornFromBreach = false;
//}
hsp_final = 0
hsp_f = 0
vsp_final = 0
vsp_f = 0
oddsEnemy = 5;
mask_index = -1;
alarm[0] = 60;
energy = false;
hp = false;
ammo = false;
laser = false;
abierto = true;
final = false;
go = false;
reset = false;
upgradeAmmo = false;
upgradeEnergy = false;
upgradeHP = false;
upgradeCharge = false;
upgradeDischarge = false;
upgradeSuperShot = false;
upgradeCable = false;
upgradeFireRate = false;
upgradeLaser = false;
upgradeReReRe = false;
upgradeSpeed = false;
upgradeChargerShoots = false;
upgradeSlowMo = false;
upgradeOvercharge = false;
upgradeClusterBomb = false;
upgradeLaserMax = false;
upgradeBonus = false;
upgradeFriend = false
upgradeDobleDoble = false;
upgradeShootingRecharges = false;
upgradeRecoverBullet = false;
upgradeChargerElectro = false;

charge = 0;
maxCharge = 200;
_hpush = choose(random_range(0.05, 0.1),-random_range(0.05, 0.1))
_vpush = choose(random_range(0.05, 0.1), -random_range(0.05, 0.1))
bnc = 1;
_angle = 0;
enchufeActive = false;
enchufeOvercharged = false;
contOvercharged = 0;

