/// @description Insert description here
// You can write your code in this editor
type = collisionType.custom;

contExploTile = 0;
offsetLaser = 10;
laserAborted = false
thisLenght=0

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
ripple_fx = 0;
contRipple = 0;
ripple = false;
canSlowMotion = true;
layer_set_visible("EffectBreach", false);
pluggedTimer = 0;
pluggedShip = false
global.pitch = 1;
global.energy = global.energyMax;
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
spaceSpeed = 4;
recoil_standard = 0.8;
recoil_bomb = 1.8;

fireRate = max(5,global.fireRate);

bombFireRate = 120;

tocado = false;
shieldCreated = false

createdFromUnplugged = false;
instance_create_layer(x,y,"Cable", o_cable)
instance_create_layer(x,y,"Player", o_crosshair)
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

