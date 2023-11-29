/// @description Insert description here
// You can write your code in this editor
if (flashAlpha > 0) 
{
	flashAlpha -= 0.09;
}


if (burnFlash >0)
{
	burnFlash-=0.1
}
if (electroFlash >0)
{
	electroFlash-=0.1
}

if (burned = true)
{
	contBurnPart--;
	
	if (contBurnPart <= 0)
	{
		contBurnPart = random_range(contBurnPartMax-1,contBurnPartMax+2) ;
		part_particles_create(global.partSmoke_sys, x+random_range(10,-10), y+random_range(10,-10), global.partSmoke , 1);
	}
	contBurnedTotal --;
	if (contBurnedTotal <= 0)
	{
		contBurnedTotal = contBurnedTotalMax;
		burned = false;
	}
	contBurned --;
	if (contBurned <= 0)
	{
		contBurned = contBurnedMax;
		burnFlash = 1;
		hp-=1;
	}
}

if instance_exists(o_BossMecha)
{
	x = o_BossMecha.x;
	y = o_BossMecha.y;
}

if instance_exists(o_enemyMini_BossMecha)
{
	if point_distance(x,y,o_enemyMini_BossMecha.x, o_enemyMini_BossMecha.y) <10
	{
		o_BossMecha.sprite_index = s_bossMechaActive;
		o_BossMecha.state = BOSS2STATE.IDLE;
		o_BossMecha.idleTime=300;
		instance_destroy(o_enemyMini_BossMecha);
		global.BossGarbanzo_Awaken = true;
		contBanner = 60;
	}
}
if (bannerCreated = false) && !instance_exists(o_enemyMini_BossMecha)
{
	contBanner --;
}
if (contBanner <=0) && bannerCreated = false
{
	
	instance_create(x,y,o_LilCrusherBossBanner);
	bannerCreated = true;
}


