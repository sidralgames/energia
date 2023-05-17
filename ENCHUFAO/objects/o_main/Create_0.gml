/// @description Insert description here
// You can write your code in this editor
global.chargeTime = 1;
global.DischargeTime = 1;
global.superShot = 1;
global.spritePart = s_nave_part;
global.bulletPart_sprite = s_bullet_part;
global.fireRate = 0;

instance_create(-100,-100,o_partBalaP)
instance_create(-100,-100,o_partNaveP)
instance_create(-100,-100,o_partNaveEnemy1)
instance_create(-100,-100,o_partEnchufe)
instance_create(-100,-100,o_partBalaTorreta)
instance_create(-100,-100,o_partMisil)
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

PlayerStats_Green()
global.Go = false;
global.resetingShip = false;
global.chargingAmmo = false;
global.chargingHp = false;
global.chargingShield = false;
global.chargingEnergy = false;




