/// @description Insert description here
// You can write your code in this editor
if (room = Sala_Tutorial)
{
	global.hp = 1;
	global.ammo = 0;
	global.energy = 250;
	global.laser = 0;
	global.bombAmmo = 0;
	global.PETAAmmo = 0;
	global.slowMoTime = 0;
}
else
{
	global.energy = global.energyMax;
}

pithDisp = 0.8
pitch = 1;
explocreated = false
maxConectRadStandard = 26;
maxConectRad = maxConectRadStandard;
maxConectRadBoss = 45;
minConectRadStandard  = 17;
minConectRadBoss  = 28;
minConectRad = minConectRadStandard;
SetFxParameters();
flashAlpha = 0;
side=choose(1,-1);
creatingSmoke = false;
contSmoke = 0;
contBurnPartMax = 8;
contBurnPart = random_range(contBurnPartMax-1,contBurnPartMax+2) ;
showEnergy = false;
if (room != Sala_Inicio) && (room != Sala_Upgade)
{
	SetHUE();
}

type = collisionType.custom;
_alpha = 1;
_spriteBattery = -1;
haveBatteryUpgrade = false;
trapped = false;
drawflashCont = 5;

contDeactivate = 60;

if (global.friendIsUpgraded)
{
	instance_create_layer(x,y,"Player", o_friend);
}

haveUsedCall = false;

haveUsedBattery = false;
contExternalBattery = 300;


if (global.shipGreenBonusUpgraded)
{
	global.bombAmmo = global.bombAmmoMax;	
}

global.amplifyPowerLaser = 0;
global.amplifyPowerAmmo = 0;
instance_destroy(o_partBalaP);
instance_create_layer(-100,-100, "Part",o_partBalaP);	

partChanged = false;
Controls_Input();
contExploTile = 0;
offsetLaser = 10;
laserAborted = false
thisLenght=0
drawflash=false;
inEnchufe = false;
connectedToShip = false;
cooldownLaser = 20;
impulse = false;

laserCont = 0;
flashLaser = false
blueWidht = 20;
whiteWidht = 10;
blueW = 30
whiteW = 10
imageStrandedAmmo=0;
imageStrandedHp=0;
imageStrandedEnergy=0;
radi = 17;
bumpsAchievement = true;
maxLenght = 0;
laserActive = true;
soundLaserShoot = false
soundLaser = false

hsp_final = 0
hsp_f = 0
vsp_final = 0
vsp_f = 0
fx = 0;
fxDistance = 0;
fx_blackHole = 0;
inBlackHoleArea = false
fx_color = 0;
fx_colorBT = 0;
fx_Player = 0;
fx_Cloak = 0;
ripple_fx = 0;
contRipple = 0;
ripple = false;
canSlowMotion = true;

pluggedTimer = 0;

pluggedTimerMax = 300;
pluggedTimerAlert = 200;

pluggedShip = false
global.pitch = 1;

upgraded = false;
if (room != Sala_Inicio)
{
	instance_create_layer(x,y,"Main",o_camera)
}
canSuperShot = true;
global.pluggedInEnergy = false;
global.pluggedInHp= false;
global.pluggedInAmmo= false;
global.pluggedInLaser= false;


crosshairSuper = false;
contSuperShot = 0;
		
sounded = false;
pluggedFinal = false;

soundEnergy = false
_hpush = 0;
_vpush = 0;
bnc = 0.6;

walkSpeed = global._speed;

plugged = false
diagSpeed = round(global._speed * ((sqrt(2)) / 2));

offRange = 2;
spaceSpeed = 3;
recoil_standard = 0.8;
recoil_bomb = 1.8;

fireRate = max(5,global.fireRate);

bombFireRate = 30;
petaFireRate = 60;

tocado = false;
shieldCreated = false

createdFromUnplugged = false;
instance_create_layer(x,y,"Cable", o_cable)
instance_create_layer(x,y,"Shield", o_crosshair)
_angle = point_direction(x,y,o_crosshair.x, o_crosshair.y)



//---Light-----//??
//if (room != Sala_Inicio)
//{
//	lightPlayer= instance_create_layer(x,y,"LightPlayer",o_Light_Player);
//}
//else
//{
//	lightPlayer=-1;
//}
_colorWhite = c_white;
greenO = make_color_rgb(99,199,77)
green = make_color_rgb(108,242,79)
red = make_color_rgb(228,59,68)
purpleO = make_color_rgb(181,80,136)
purple = make_color_rgb(246,117,122)

rojo= make_colour_rgb(228,59,69);
blanco= make_colour_rgb(255,255,255);
blue = make_color_rgb(44,232, 245) ;
orange = make_color_rgb(255,0,68);
oranget = make_color_rgb(247,118,34);
blueO = make_color_rgb(0,149,233)
blueOO = make_color_rgb(18,78,137)
if (global.spriteShip = splayer)
{
	colorLaser = green;
}

if (global.spriteShip = splayer_Blue)
{
	colorLaser = blue;
}

if (global.spriteShip = splayer_Red)
{
	colorLaser = oranget;
}

if (global.spriteShip = splayer_Purple)
{
	colorLaser = purpleO;
}

if (global.spriteShip = splayer_Dark)
{
	colorLaser = orange;
}

if (global.spriteShip = splayer_mp3)
{
	colorLaser = blueO;
}
