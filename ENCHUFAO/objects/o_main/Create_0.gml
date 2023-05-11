/// @description Insert description here
// You can write your code in this editor
instance_create(-100,-100,o_partBalaP)
instance_create(-100,-100,o_partNaveP)
instance_create(-100,-100,o_partNaveEnemy1)
instance_create(-100,-100,o_partEnchufe)
instance_create(-100,-100,o_partBalaTorreta)
instance_create(-100,-100,o_partMisil)

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

global.energyTotal = 300;
global.energy = global.energyTotal;

global.hpMax = 8;
global.hp = 6;

global.shieldsMax = 2;
global.shields = 0;

global.ammo = 100;
global.ammoMax = 150;

global.chargingAmmo = false;
global.chargingHp = false;
global.chargingShield = false;
global.chargingEnergy = false;




