/// @description Insert description here
// You can write your code in this editor
global.energy = global.energyTotal;
upgraded = false;
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

walkSpeed = global._speed;

plugged = false
diagSpeed = round(global._speed * ((sqrt(2)) / 2));

offRange = 2;

recoil_standard = 0.8;
fireRate = 15;
tocado = false;
shieldCreated = false

createdFromUnplugged = false;
instance_create_layer(x,y,"Cable", o_cable)
instance_create_layer(x,y,"Player", o_crosshair)
_angle = point_direction(x,y,o_crosshair.x, o_crosshair.y)

