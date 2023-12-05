/// @description Insert description here
// You can write your code in this editor
affectedByLaserTrap = true;
thisEnemyBounce = false;
isWormHitBox = false;
hurts = true;
canBeDestroyed = true;
myPath = path_add();
burned = false;

rojo= make_colour_rgb(228,59,69);
rojo2= make_colour_rgb(158, 40, 53);
haveAShield = false;
canHaveAShield = true;
contBurnedTotalMax = 300;
contBurnedTotal = contBurnedTotalMax;
contBurnedMax = 100;
contBurned = contBurnedMax;
contBurnPartMax = 5;
contBurnPart = contBurnPartMax;
contElectro = contBurnedMax;
contElectroPart = contBurnPartMax;
contElectroTotal = contBurnedTotalMax;
electrocutated = false;
burnFlash = 0;
electroFlash = 0;
repelled = false;
repelledTimeMax = 20;
repelledTime = repelledTimeMax;
state =-1;
myPath = path_add();
_angle=0;
isShield = false;
isImmortal = false
enemyIsMini = false;
canBounce = false;
type = collisionType.custom;
checkHP = false;
slowMoPickUps = 8;
flashAlpha = 0;
isCounted = false;
waiting = false;
hsp_final = 0
hsp_f = 0
vsp_final = 0
vsp_f = 0
crosshairSuper = false
cross = -1;
_hpush = 0;
_vpush = 0;
hsp_f =0;
vsp_f =0;
bnc = 0.5
shocked = false;
_hp = 5;
cont = 500;
image_speed = 0.5;

precision= choose(3.75,3);
speed=random(1)+1;
_speedMin = 0.1;
_speedMax = 0.1;

tocado = false;


direction_ =direction;


//tentacles.offs = 10
//tentacles2 = instance_create_layer(x,y+5,"Tentacles",oVine)
//tentacles2.offs =-10

alarm[1] = 0;
_speed=0;
off = 90;
len = 0;

hasShield = irandom(4);

if (hasShield = 0)
{
	CreateShieldEnemy(20, 1, s_shieldPurple); //hp, scale, sprite
}


if tile_meeting(x,y,"Tiles")
{
	instance_destroy()
}