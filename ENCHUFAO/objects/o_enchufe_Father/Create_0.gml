/// @description Insert description here
// You can write your code in this editor
//if room != Sala_Inicio
//{
//	lightEnchufe= instance_create_layer(x,y,"LightPlayer",o_Light_Enchufe);
//type = collisionType.custom;
isSteam = false;
randomize();
IsEnchufeMP3CHILL = false;
isMainEnchufe = false;


xConnectionPos = x;
yConnectionPos = y;
occupied = false;
isEnchufeUpgrade = false;
isPluggable = true;

isCapsuleUpgrade = false;
IsEnchufeCapsuleSuper = false;

enchufeTrapper = false;
canBeEnchufated = true;
canBeEnchufatedCont = 0;

isMimic = false;
isMimicCapsule = false;

IsEnchufeBoss = false;
IsEnchufeCapsule = false;
capsuleHaveBattery = false;
capsuleHaveSomething = false;
capsuleHaveStranded = false;
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
isPETALaser = false;
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

thisUpgrade = "";


secret = false;

charge = 0;
maxCharge = 200;
_hpush = choose(random_range(0.05, 0.1),-random_range(0.05, 0.1))
_vpush = choose(random_range(0.05, 0.1), -random_range(0.05, 0.1))
bnc = 1;
_angle = 0;
enchufeActive = false;
enchufeOvercharged = false;
contOvercharged = 0;

isBroken = false;
spinDir = choose(-1,1);
