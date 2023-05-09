/// @description Insert description here
// You can write your code in this editor
if (room != Sala_Inicio)
{
	instance_create_layer(x,y,"Main",o_camera)
}
canSuperShot = true;
global.pluggedInEnergy = false;
global.pluggedInHp= false;
global.pluggedInAmmo= false;
global.pluggedInShield= false;


crosshairSuper = false;
contSuperShot = 0;
		
sounded = false;
pluggedFinal = false;

soundEnergy = false
_hpush = 0;
_vpush = 0;
bnc = 0.6;
_speed = 3;
walkSpeed = _speed;
diagSpeed = round(_speed * ((sqrt(2)) / 2));
plugged = false
walkAcceleration = 0.1;
airAcceleration = 0.2;
hFrictionGround = 1;
hFrictionAir = 0.05;
offRange = 2;
recoil = 0.1;
fireRate = 15;
tocado = false;
shieldCreated = false
hSpeedFraction = 0.0;
vSpeedFraction = 0.0;
createdFromUnplugged = false;
instance_create_layer(x,y,"Cable", o_cable)
instance_create_layer(x,y,"Player", o_crosshair)

